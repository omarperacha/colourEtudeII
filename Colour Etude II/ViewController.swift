//
//  ViewController.swift
//  Colour Etude II
//
//  Created by Omar Peracha on 07/02/2017.
//  Copyright © 2017 Omar Peracha. All rights reserved.
//

import UIKit

import AudioKit
import Foundation
import AVFoundation


var soundScapeVolumeGlobal = 0.165
var samplerVolumeGlobal = 15.0

let vcSingleton = Singleton()


class ViewController: UIViewController {
    
    
    let bundle = Bundle.main

    
    @objc func audioRouteChangeListener(notification:NSNotification) {
        let audioRouteChangeReason = notification.userInfo![AVAudioSessionRouteChangeReasonKey] as! UInt
        
        switch audioRouteChangeReason {
        case AVAudioSessionRouteChangeReason.newDeviceAvailable.rawValue:
            do{
                try AudioKit.stop()
            } catch {print("error")}
            print("headphone plugged in")
            reset()
        case AVAudioSessionRouteChangeReason.oldDeviceUnavailable.rawValue:
            do{
                try AudioKit.stop()
            } catch {print("error")}
            print("headphone pulled out")
            reset()
        default:
            break
        }
    }
    
    //button keyboardactions
    
    @IBAction func playNoteF1(_ sender: Any) {
        do{ try
            fSampler.play(noteNumber: 48, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteF2(_ sender: Any) {
        do{ try
            xSampler.play(noteNumber: 48, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteF3(_ sender: Any) {
        do{ try
            fSampler.play(noteNumber: 50, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteF4(_ sender: Any) {
        do{ try
            fSampler.play(noteNumber: 52, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteF5(_ sender: Any) {
        do{ try
            fSampler.play(noteNumber: 53, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteF6(_ sender: Any) {
        do{ try
            xSampler.play(noteNumber: 50, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteF7(_ sender: Any) {
        do{ try
            fSampler.play(noteNumber: 55, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteF8(_ sender: Any) {
        do{ try
            xSampler.play(noteNumber: 52, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func PlayNoteF9(_ sender: Any) {
        do{ try
            xSampler.play(noteNumber: 53, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteF10(_ sender: Any) {
        do{ try
            fSampler.play(noteNumber: 57, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteF11(_ sender: Any) {
        do{ try
            xSampler.play(noteNumber: 55, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteF12(_ sender: Any) {
        do{ try
            fSampler.play(noteNumber: 59, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteF13(_ sender: Any) {
        do{ try
            xSampler.play(noteNumber: 57, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC1(_ sender: Any) {
        do{ try
            cSampler.play(noteNumber: 48, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC2(_ sender: Any) {
        do{ try
            cSampler.play(noteNumber: 50, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC3(_ sender: Any) {
        do{ try
            xSampler.play(noteNumber: 48, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC4(_ sender: Any) {
        do{ try
            cSampler.play(noteNumber: 52, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC5(_ sender: Any) {
        do{ try
            cSampler.play(noteNumber: 53, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC6(_ sender: Any) {
        do{ try
            xSampler.play(noteNumber: 50, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC7(_ sender: Any) {
        do{ try
            xSampler.play(noteNumber: 52, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC8(_ sender: Any) {
        do{ try
            xSampler.play(noteNumber: 53, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC9(_ sender: Any) {
        do{ try
            xSampler.play(noteNumber: 55, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC10(_ sender: Any) {
        do{ try
            cSampler.play(noteNumber: 55, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC11(_ sender: Any) {
        do{ try
            cSampler.play(noteNumber: 57, velocity: 127)
        }catch{print("error")}
    }
    
    @IBAction func playNoteC12(_ sender: Any) {
        do{ try
            cSampler.play(noteNumber: 59, velocity: 127)
        }catch{print("error")}
    }
    
    
    //button outlet setups

    @IBOutlet weak var fButton: UIButton!
    
    @IBOutlet weak var cButton: UIButton!
    
    @IBOutlet weak var f1Button: UIButton!
    
    @IBOutlet weak var f2Button: UIButton!
    
    @IBOutlet weak var f3Button: UIButton!
    
    @IBOutlet weak var f4Button: UIButton!
    
    @IBOutlet weak var f5Button: UIButton!
    
    @IBOutlet weak var f6Button: UIButton!
    
    @IBOutlet weak var f7Button: UIButton!
    
    @IBOutlet weak var f8Button: UIButton!
    
    @IBOutlet weak var f9Button: UIButton!
    
    @IBOutlet weak var f10Button: UIButton!
    
    @IBOutlet weak var f11Button: UIButton!
    
    @IBOutlet weak var f12Button: UIButton!
    
    @IBOutlet weak var f13Button: UIButton!
    
    @IBOutlet weak var c1Button: UIButton!
    
    @IBOutlet weak var c2Button: UIButton!
    
    @IBOutlet weak var c3Button: UIButton!
    
    @IBOutlet weak var c4Button: UIButton!
    
    @IBOutlet weak var c5Button: UIButton!
    
    @IBOutlet weak var c6Button: UIButton!
    
    @IBOutlet weak var c7Button: UIButton!
    
    @IBOutlet weak var c8Button: UIButton!
    
    @IBOutlet weak var c9Button: UIButton!
    
    @IBOutlet weak var c10Button: UIButton!
    
    @IBOutlet weak var c11Button: UIButton!
    
    @IBOutlet weak var c12Button: UIButton!
    
    var fState = 0
    var cState = 0
    let borderWidth = 0.25
    
    //soundscapes
    var fScape = Soundscape()
    var cScape = Soundscape()
    
    let cFreqs = [269.604, 355.445, 445.693, 496.254, 658.234, 785.295, 993.867, 1061.493, 1115.973, 1195.437, 1334.1, 1593.32, 2659.323]
    
    let fFreqs = [360.0, 479.151, 639.861, 732.632, 785.991, 830.274, 933.586, 1064.81, 1998.707, 2153.82]
    
    //samplers
    var cSampler = AKAppleSampler()
    var fSampler = AKAppleSampler()
    var xSampler = AKAppleSampler()
    
    var cC3 : AKAudioFile?
    var cD3 : AKAudioFile?
    var cE3 : AKAudioFile?
    var cF3 : AKAudioFile?
    var cG3 : AKAudioFile?
    var cA3 : AKAudioFile?
    var cB3 : AKAudioFile?
    
    var fC3 : AKAudioFile?
    var fD3 : AKAudioFile?
    var fE3 : AKAudioFile?
    var fF3 : AKAudioFile?
    var fG3 : AKAudioFile?
    var fA3 : AKAudioFile?
    var fB3 : AKAudioFile?
    
    var xC3 : AKAudioFile?
    var xD3 : AKAudioFile?
    var xE3 : AKAudioFile?
    var xF3 : AKAudioFile?
    var xG3 : AKAudioFile?
    var xA3 : AKAudioFile?
    
    //envelopes & reverb
    var cEnv: AKAmplitudeEnvelope!
    var fEnv: AKAmplitudeEnvelope!
    var EQ = AKEqualizerFilter()
    var Filter = AKLowPassFilter()
    var rev: AKReverb!

    
    //mixers
    var finalMix = AKMixer()
    var cScapeMix = AKMixer()
    var fScapeMix = AKMixer()
    var envMix = AKMixer()
    var samplerMix = AKMixer()


    

    func randomFloat() -> Double {
        return random(in: 0.01...1)
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib
        NotificationCenter.default.addObserver(self, selector: #selector(self.audioRouteChangeListener(notification:)), name: NSNotification.Name.AVAudioSessionRouteChange, object: nil)
        
        AKSettings.playbackWhileMuted = true

        //MARK - Initialise Audiofiles cSampler//
        do {cC3 = try AKAudioFile(readFileName: "Toy Piano F+4 C3.aif")} catch {print("cC3 messed up")}
        
        do {cD3 = try AKAudioFile(readFileName: "Toy Piano C++6 D3.aif")} catch {print("cD3 messed up")}
        
        do {cE3 = try AKAudioFile(readFileName: "Toy Piano Enat6 E3.aif")} catch {print("cE3 messed up")}
        
         do {cF3 = try AKAudioFile(readFileName: "Toy Piano G+6 F3.aif")} catch {print("cF3 messed up")}
        
        do {cG3 = try AKAudioFile(readFileName: "Toy Piano Dnat7 G3.aif")} catch {print("cG3 messed up")}
        
        do {cA3 = try AKAudioFile(readFileName: "Toy Piano D+7 A3.aif")} catch {print("cA3 messed up")}
        
        do {cB3 = try AKAudioFile(readFileName: "Toy Piano Enat7 B3.aif")} catch {print("cB3 messed up")}
        
        
        if cD3 == nil{
            print("cD3 is nil")
        } else {
            do{
                try cSampler.loadAudioFiles([cC3!, cD3!, cE3!, cF3!, cG3!, cA3!, cB3!])
            } catch {
                print("csampler messed up")
            }}
        
        
        
        do {fC3 = try AKAudioFile(readFileName: "Toy Piano F+5 C3.aif")} catch {print("fC3 messed up")}
        
        do {fD3 = try AKAudioFile(readFileName: "Toy Piano Ehflt6 D3.aif")} catch {print("fD3 messed up")}
        
        do {fE3 = try AKAudioFile(readFileName: "Toy Piano F+6 E3.aif")} catch {print("fE3 messed up")}
        
        do {fF3 = try AKAudioFile(readFileName: "Toy Piano Gnat6 F3.aif")} catch {print("fF3 messed up")}
        
        do {fG3 = try AKAudioFile(readFileName: "Toy Piano Anat6 G3.aif")} catch {print("fG3 messed up")}
        
        do {fA3 = try AKAudioFile(readFileName: "Toy Piano C+7 A3.aif")} catch {print("fA3 messed up")}
        
        do {fB3 = try AKAudioFile(readFileName: "Toy Piano Eflt7 B3.aif")} catch {print("fB3 messed up")}
        
        
        if fD3 == nil{
            print("fD3 is nil")
        } else {
            do{
                try fSampler.loadAudioFiles([fC3!, fD3!, fE3!, fF3!, fG3!, fA3!, fB3!])
            } catch {
                print("fsampler messed up")
            }}
        
        
        
        do {xC3 = try AKAudioFile(readFileName: "Toy Piano D+6 C3.aif")} catch {print("xC3 messed up")}
        
        do {xD3 = try AKAudioFile(readFileName: "Toy Piano Aflt6 D3.aif")} catch {print("xD3 messed up")}
        
        do {xE3 = try AKAudioFile(readFileName: "Toy Piano Bflt6 E3.aif")} catch {print("xE3 messed up")}
        
        do {xF3 = try AKAudioFile(readFileName: "Toy Piano Bnat6 F3.aif")} catch {print("xF3 messed up")}
        
        do {xG3 = try AKAudioFile(readFileName: "Toy Piano C++7 G3.aif")} catch {print("xG3 messed up")}
        
        do {xA3 = try AKAudioFile(readFileName: "Toy Piano Fnat7 A3.aif")} catch {print("xA3 messed up")}
        
        
        if xD3 == nil{
            print("xD3 is nil")
        } else {
            do{
                try xSampler.loadAudioFiles([xC3!, xD3!, xE3!, xF3!, xG3!, xA3!])
            } catch {
                print("xsampler messed up")
            }}
        
        
        
        //set up button appearance
        self.fButton.layer.cornerRadius = 5
        self.fButton.layer.borderWidth = 1
        self.fButton.layer.borderColor = UIColor.gray.cgColor
        
        self.cButton.layer.cornerRadius = 5
        self.cButton.layer.borderWidth = 1
        self.cButton.layer.borderColor = UIColor.gray.cgColor
        
        self.f1Button.layer.borderWidth = CGFloat(borderWidth)
        self.f1Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f2Button.layer.borderWidth = CGFloat(borderWidth)
        self.f2Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f3Button.layer.borderWidth = CGFloat(borderWidth)
        self.f3Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f4Button.layer.borderWidth = CGFloat(borderWidth)
        self.f4Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f5Button.layer.borderWidth = CGFloat(borderWidth)
        self.f5Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f6Button.layer.borderWidth = CGFloat(borderWidth)
        self.f6Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f7Button.layer.borderWidth = CGFloat(borderWidth)
        self.f7Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f8Button.layer.borderWidth = CGFloat(borderWidth)
        self.f8Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f9Button.layer.borderWidth = CGFloat(borderWidth)
        self.f9Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f10Button.layer.borderWidth = CGFloat(borderWidth)
        self.f10Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f11Button.layer.borderWidth = CGFloat(borderWidth)
        self.f11Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f12Button.layer.borderWidth = CGFloat(borderWidth)
        self.f12Button.layer.borderColor = UIColor.gray.cgColor
        
        self.f13Button.layer.borderWidth = CGFloat(borderWidth)
        self.f13Button.layer.borderColor = UIColor.gray.cgColor
        
        self.c1Button.layer.borderWidth = CGFloat(borderWidth)
        self.c1Button.layer.borderColor = UIColor.lightGray.cgColor
        
        self.c2Button.layer.borderWidth = CGFloat(borderWidth)
        self.c2Button.layer.borderColor = UIColor.lightGray.cgColor
        
        self.c3Button.layer.borderWidth = CGFloat(borderWidth)
        self.c3Button.layer.borderColor = UIColor.lightGray.cgColor
        
        self.c4Button.layer.borderWidth = CGFloat(borderWidth)
        self.c4Button.layer.borderColor = UIColor.lightGray.cgColor
        
        self.c5Button.layer.borderWidth = CGFloat(borderWidth)
        self.c5Button.layer.borderColor = UIColor.lightGray.cgColor
        
        self.c6Button.layer.borderWidth = CGFloat(borderWidth)
        self.c6Button.layer.borderColor = UIColor.lightGray.cgColor
        
        self.c7Button.layer.borderWidth = CGFloat(borderWidth)
        self.c7Button.layer.borderColor = UIColor.lightGray.cgColor
        
        self.c8Button.layer.borderWidth = CGFloat(borderWidth)
        self.c8Button.layer.borderColor = UIColor.lightGray.cgColor
        
        self.c9Button.layer.borderWidth = CGFloat(borderWidth)
        self.c9Button.layer.borderColor = UIColor.lightGray.cgColor
        
        self.c10Button.layer.borderWidth = CGFloat(borderWidth)
        self.c10Button.layer.borderColor = UIColor.lightGray.cgColor
        
        self.c11Button.layer.borderWidth = CGFloat(borderWidth)
        self.c11Button.layer.borderColor = UIColor.lightGray.cgColor
        
        self.c12Button.layer.borderWidth = CGFloat(borderWidth)
        self.c12Button.layer.borderColor = UIColor.lightGray.cgColor
        
        //set up soundscapes
        cScape.setup(freqs: cFreqs)
        fScape.setup(freqs: fFreqs)
        
        //attach scapes to mixer and envelope
        cScape.attachToMixer(mixer: cScapeMix)
        fScape.attachToMixer(mixer: fScapeMix)
        
        
        cEnv = AKAmplitudeEnvelope(cScapeMix, attackDuration: 2.5, decayDuration: 0.1, sustainLevel: 1, releaseDuration: 0.8)
        fEnv = AKAmplitudeEnvelope(fScapeMix, attackDuration: 4, decayDuration: 0.1, sustainLevel: 1, releaseDuration: 0.8)
        
        envMix = AKMixer(cEnv, fEnv)
        
        func ssSet() -> Double {
            self.envMix.volume = vcSingleton.sSVol
            return envMix.volume
        }
    
        vcSingleton.changeScape = ssSet
        
        envMix.volume = vcSingleton.sSVol
        
        EQ = AKEqualizerFilter(envMix, centerFrequency: 1000, bandwidth: 200, gain: 0.8)
        
        Filter = AKLowPassFilter(EQ, cutoffFrequency: 1500)
        
        rev = AKReverb(Filter, dryWetMix: 1)
        
        
        samplerMix = AKMixer(cSampler, fSampler, xSampler)
        
        func sampSet() -> Double {
            if samplerMix.volume != vcSingleton.singletonSampVol{
            samplerMix.volume = vcSingleton.singletonSampVol
                
                do{
                    try cSampler.play(noteNumber: 48, velocity: 1)
                    try xSampler.play(noteNumber: 57, velocity: 127)
                    try fSampler.play(noteNumber: 48, velocity: 1)
                }catch{print("error")}}
            return samplerMix.volume
        }
        
        vcSingleton.changeSamp = sampSet
        
        samplerMix.volume = vcSingleton.singletonSampVol
        
        finalMix = AKMixer(rev, samplerMix)
        
        AudioKit.output = finalMix
        do{
            try
            AudioKit.start()
        } catch{print("error")}
        
        //start soundscapes
        cScape.start()
        fScape.start()
        
        rev.start()
        
    }
    
    func reset(){
        //set up Soundscapes
        cScape.stop()
        fScape.stop()
        
        cScapeMix.detach()
        fScapeMix.detach()
        
        cScape.attachToMixer(mixer: cScapeMix)
        fScape.attachToMixer(mixer: fScapeMix)
       
        
        //MARK - Re -Initialise Audiofiles cSampler//
        do {cC3 = try AKAudioFile(readFileName: "Toy Piano F+4 C3.aif")} catch {print("cC3 messed up")}
        
        do {cD3 = try AKAudioFile(readFileName: "Toy Piano C++6 D3.aif")} catch {print("cD3 messed up")}
        
        do {cE3 = try AKAudioFile(readFileName: "Toy Piano Enat6 E3.aif")} catch {print("cE3 messed up")}
        
        do {cF3 = try AKAudioFile(readFileName: "Toy Piano G+6 F3.aif")} catch {print("cF3 messed up")}
        
        do {cG3 = try AKAudioFile(readFileName: "Toy Piano Dnat7 G3.aif")} catch {print("cG3 messed up")}
        
        do {cA3 = try AKAudioFile(readFileName: "Toy Piano D+7 A3.aif")} catch {print("cA3 messed up")}
        
        do {cB3 = try AKAudioFile(readFileName: "Toy Piano Enat7 B3.aif")} catch {print("cB3 messed up")}
        
        
        if cD3 == nil{
            print("cD3 is nil")
        } else {
            do{
                try cSampler.loadAudioFiles([cC3!, cD3!, cE3!, cF3!, cG3!, cA3!, cB3!])
            } catch {
                print("csampler messed up")
            }}
        
        
        
        do {fC3 = try AKAudioFile(readFileName: "Toy Piano F+5 C3.aif")} catch {print("fC3 messed up")}
        
        do {fD3 = try AKAudioFile(readFileName: "Toy Piano Ehflt6 D3.aif")} catch {print("fD3 messed up")}
        
        do {fE3 = try AKAudioFile(readFileName: "Toy Piano F+6 E3.aif")} catch {print("fE3 messed up")}
        
        do {fF3 = try AKAudioFile(readFileName: "Toy Piano Gnat6 F3.aif")} catch {print("fF3 messed up")}
        
        do {fG3 = try AKAudioFile(readFileName: "Toy Piano Anat6 G3.aif")} catch {print("fG3 messed up")}
        
        do {fA3 = try AKAudioFile(readFileName: "Toy Piano C+7 A3.aif")} catch {print("fA3 messed up")}
        
        do {fB3 = try AKAudioFile(readFileName: "Toy Piano Eflt7 B3.aif")} catch {print("fB3 messed up")}
        
        
        if fD3 == nil{
            print("fD3 is nil")
        } else {
            do{
                try fSampler.loadAudioFiles([fC3!, fD3!, fE3!, fF3!, fG3!, fA3!, fB3!])
            } catch {
                print("fsampler messed up")
            }}
        
        
        
        do {xC3 = try AKAudioFile(readFileName: "Toy Piano D+6 C3.aif")} catch {print("xC3 messed up")}
        
        do {xD3 = try AKAudioFile(readFileName: "Toy Piano Aflt6 D3.aif")} catch {print("xD3 messed up")}
        
        do {xE3 = try AKAudioFile(readFileName: "Toy Piano Bflt6 E3.aif")} catch {print("xE3 messed up")}
        
        do {xF3 = try AKAudioFile(readFileName: "Toy Piano Bnat6 F3.aif")} catch {print("xF3 messed up")}
        
        do {xG3 = try AKAudioFile(readFileName: "Toy Piano C++7 G3.aif")} catch {print("xG3 messed up")}
        
        do {xA3 = try AKAudioFile(readFileName: "Toy Piano Fnat7 A3.aif")} catch {print("xA3 messed up")}
        
        
        if xD3 == nil{
            print("xD3 is nil")
        } else {
            do{
                try xSampler.loadAudioFiles([xC3!, xD3!, xE3!, xF3!, xG3!, xA3!])
            } catch {
                print("xsampler messed up")
            }}
        
        
        AudioKit.output = finalMix
        do{
            try AudioKit.start()
        } catch{print("error")}
        
        //start soundscapes
        cScape.start()
        fScape.start()
        
        rev.start()
        
        if fState == 1{
            fEnv.start()
        }
        
        if cState == 1{
            cEnv.start()
        }
        
    }


        
    @IBAction func playF(_ sender: Any) {
        if fState == 0 {
            fState = 1
            fButton.setTitleColor(.white, for: .normal)
            fButton.layer.borderColor = UIColor.white.cgColor
            
            fEnv.start()
        }
        
        else {
            fState = 0
            fButton.setTitleColor(.black, for: .normal)
            fButton.layer.borderColor = UIColor.black.cgColor
            
            fEnv.stop()
        }
        
        if cEnv.isStarted {
            
            cEnv.stop()
            
            cState = 0
            cButton.setTitleColor(.black, for: .normal)}
            cButton.layer.borderColor = UIColor.black.cgColor
    }
    
    
    @IBAction func playC(_ sender: Any) {
        if cState == 0 {
            cState = 1
            cButton.setTitleColor(.white, for: .normal)
            cButton.layer.borderColor = UIColor.white.cgColor
            
            cEnv.start()
        }
        
        else {
            cState = 0
            cButton.setTitleColor(.black, for: .normal)
            cButton.layer.borderColor = UIColor.black.cgColor
            
            cEnv.stop()
        }
        
        if fEnv.isStarted {
            
            fEnv.stop()
            
            
            fState = 0
            fButton.setTitleColor(.black, for: .normal)}
            fButton.layer.borderColor = UIColor.black.cgColor
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func makePulsing() {
        cScape.changeAmpTypePulse(freqs: cFreqs, mixer: cScapeMix)
        fScape.changeAmpTypePulse(freqs: fFreqs, mixer: fScapeMix)
    }
    
    func makeSmooth() {
        cScape.changeAmpTypeSmooth(freqs: cFreqs, mixer: cScapeMix)
        fScape.changeAmpTypeSmooth(freqs: fFreqs, mixer: fScapeMix)
    }
    
    func makeMixed() {
        cScape.changeAmpTypeMixed(freqs: cFreqs, mixer: cScapeMix)
        fScape.changeAmpTypeMixed(freqs: fFreqs, mixer: fScapeMix)
    }
    
}

