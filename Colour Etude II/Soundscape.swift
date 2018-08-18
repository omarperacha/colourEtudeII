//
//  Soundscape.swift
//  Colour Etude II
//
//  Created by Omar Peracha on 16/08/2018.
//  Copyright © 2018 Omar Peracha. All rights reserved.
//

import Foundation
import AudioKit

class Soundscape {
 
    var partials = [AKOperationGenerator]()
    
    var isStarted = false
    
    func setup(freqs: [Double]){
        for i in freqs{
            partials.append(
                AKOperationGenerator{ _ in
                    return AKOperation.sineWave(frequency: i, amplitude: randomAmp()*normaliser(freq: i))}
            )
        }
    }
    
    func start(){
        for i in 0..<(partials.count){
            partials[i].start()
        }
        isStarted = true
    }
    
    func stop(){
        for i in 0..<(partials.count){
            partials[i].stop()
        }
        isStarted = false
    }
    
    func attachToMixer(mixer: AKMixer){
        for i in 0..<(partials.count){
            partials[i] >>> mixer
        }
    }
    
    func randomFloat() -> Float {
        return Float(random(in: 0.05...0.2))
    }
    
    func randomAmp() -> AKOperation {
        let lfo = AKOperation.randomVertexPulse(minimum: 0, maximum: 0.4, updateFrequency: randomFloat())
        return lfo
    }
    
    func changeAmpTypeSmooth(freqs: [Double], mixer: AKMixer){
        for i in 0..<partials.count{
            let lfo = AKOperation.randomVertexPulse(minimum: 0, maximum: 0.4, updateFrequency: randomFloat())
            
            
            partials[i].stop()
            partials[i].detach()
            
            partials[i] = AKOperationGenerator{ _ in
                return AKOperation.sineWave(frequency: freqs[i], amplitude: lfo*normaliser(freq: freqs[i]))}
            
            partials[i] >>> mixer
            partials[i].start()
        }
    }
    
    func changeAmpTypePulse(freqs: [Double], mixer: AKMixer){

        for i in 0..<partials.count {

            let lfo = AKOperation.randomNumberPulse(minimum: 0, maximum: 0.4, updateFrequency: randomFloat())
            
            partials[i].stop()
            partials[i].detach()
            
            partials[i] = AKOperationGenerator{ _ in
                return AKOperation.sineWave(frequency: freqs[i], amplitude: lfo*normaliser(freq: freqs[i]))}
                
            partials[i] >>> mixer
            partials[i].start()
        }
        
        print("soundscape done")

    }
    
    func changeAmpTypeMixed(freqs: [Double], mixer: AKMixer){
        for i in 0..<partials.count{
            
            var lfo: AKOperation?
            if(random(in: 0...1)>0.5){
                lfo = AKOperation.randomNumberPulse(minimum: 0, maximum: 0.4, updateFrequency: randomFloat())
            }else{
                lfo = AKOperation.randomNumberPulse(minimum: 0, maximum: 0.4, updateFrequency: randomFloat())
            }
            
            partials[i].stop()
            partials[i].detach()
            
            partials[i] = AKOperationGenerator{ _ in
                return AKOperation.sineWave(frequency: freqs[i], amplitude: lfo!*normaliser(freq: freqs[i]))}
            
            partials[i] >>> mixer
            partials[i].start()
        }
    }
    
    func normaliser(freq: Double) -> Double{
        return (4000-freq)/4000
    }
}
