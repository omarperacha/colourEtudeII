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
 
    var partials = [AKOscillator()]
    
    var isStarted = false
    
    func setup(freqs: [Double]){
        for i in freqs{
            partials.append(AKOscillator(waveform: AKTable(.positiveSine, phase: 0), frequency: i, amplitude: 0.3))
        }
    }
    
    func start(){
        for i in 0..<(partials.count){
            partials[i].start()
            print(i)
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
    
    func randomFloat() -> Double {
        return random(in: 0.01...1)
    }
}
