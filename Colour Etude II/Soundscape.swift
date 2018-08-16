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
                    return AKOperation.sineWave(frequency: i, amplitude: randomAmp())}
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
        let lfo = AKOperation.randomVertexPulse(minimum: 0, maximum: 1, updateFrequency: randomFloat())
        return lfo
    }
}
