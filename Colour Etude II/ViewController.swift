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
    
    //all fsynths (10)
    let fsynth = AKOscillator()
    let fsynth2 = AKOscillator()
    let fsynth3 = AKOscillator()
    let fsynth4 = AKOscillator()
    let fsynth5 = AKOscillator()
    let fsynth6 = AKOscillator()
    let fsynth7 = AKOscillator()
    let fsynth8 = AKOscillator()
    let fsynth9 = AKOscillator()
    let fsynth10 = AKOscillator()
    
    //allftrems
    var ftrem : AKTremolo!
    var ftrem2 : AKTremolo!
    var ftrem3 : AKTremolo!
    var ftrem4 : AKTremolo!
    var ftrem5 : AKTremolo!
    var ftrem6 : AKTremolo!
    var ftrem7 : AKTremolo!
    var ftrem8 : AKTremolo!
    var ftrem9 : AKTremolo!
    var ftrem10 : AKTremolo!
    
    //allcsynths (13)
    let csynth = AKOscillator()
    let csynth2 = AKOscillator()
    let csynth3 = AKOscillator()
    let csynth4 = AKOscillator()
    let csynth5 = AKOscillator()
    let csynth6 = AKOscillator()
    let csynth7 = AKOscillator()
    let csynth8 = AKOscillator()
    let csynth9 = AKOscillator()
    let csynth10 = AKOscillator()
    let csynth11 = AKOscillator()
    let csynth12 = AKOscillator()
    let csynth13 = AKOscillator()
    
    //allctrems
    var ctrem : AKTremolo!
    var ctrem2 : AKTremolo!
    var ctrem3 : AKTremolo!
    var ctrem4 : AKTremolo!
    var ctrem5 : AKTremolo!
    var ctrem6 : AKTremolo!
    var ctrem7 : AKTremolo!
    var ctrem8 : AKTremolo!
    var ctrem9 : AKTremolo!
    var ctrem10 : AKTremolo!
    var ctrem11 : AKTremolo!
    var ctrem12 : AKTremolo!
    var ctrem13 : AKTremolo!
    
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
    var rev: AKReverb!

    
    
    //mixers
    var finalMix = AKMixer()
    var ctremMix = AKMixer()
    var ftremMix = AKMixer()
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
        
        //set up C synths
        csynth.frequency = 269.604
        csynth.amplitude = 0.3
        ctrem = AKTremolo(self.csynth, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem.start()
        
        csynth2.frequency = 355.445
        csynth2.amplitude = 0.3
        ctrem2 = AKTremolo(self.csynth2, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem2.start()
        
        csynth3.frequency = 445.693
        csynth3.amplitude = 0.3
        ctrem3 = AKTremolo(self.csynth3, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem3.start()
        
        csynth4.frequency = 496.254
        csynth4.amplitude = 0.3
        ctrem4 = AKTremolo(self.csynth4, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem4.start()
        
        csynth5.frequency = 658.234
        csynth5.amplitude = 0.3
        ctrem5 = AKTremolo(self.csynth5, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem5.start()
        
        csynth6.frequency = 785.295
        csynth6.amplitude = 0.3
        ctrem6 = AKTremolo(self.csynth6, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem6.start()
        
        csynth7.frequency = 993.867
        csynth7.amplitude = 0.3
        ctrem7 = AKTremolo(self.csynth7, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem7.start()
        
        csynth8.frequency = 1061.493
        csynth8.amplitude = 0.3
        ctrem8 = AKTremolo(self.csynth8, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem8.start()
        
        csynth9.frequency = 1115.973
        csynth9.amplitude = 0.3
        ctrem9 = AKTremolo(self.csynth9, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem9.start()
        
        csynth10.frequency = 1195.437
        csynth10.amplitude = 0.3
        ctrem10 = AKTremolo(self.csynth10, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem10.start()
        
        csynth11.frequency = 1334.1
        csynth11.amplitude = 0.3
        ctrem11 = AKTremolo(self.csynth11, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem11.start()
        
        csynth12.frequency = 1593.32
        csynth12.amplitude = 0.2
        ctrem12 = AKTremolo(self.csynth12, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem12.start()
        
        csynth13.frequency = 2659.323
        csynth13.amplitude = 0.2
        ctrem13 = AKTremolo(self.csynth13, frequency: random(in: 0.02...0.05), depth: 0.6, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ctrem13.start()
        
    
        //set up F synths
        fsynth.frequency = 360
        fsynth.amplitude = 0.3
        ftrem = AKTremolo(self.fsynth, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ftrem.start()
        
        fsynth2.frequency = 2153.82
        fsynth2.amplitude = 0.2
        ftrem2 = AKTremolo(self.fsynth2, frequency: random(in: 0.02...0.05), depth: 0.6, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ftrem2.start()
        
        fsynth3.frequency = 1064.81
        fsynth3.amplitude = 0.3
        ftrem3 = AKTremolo(self.fsynth3, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ftrem3.start()
        
        fsynth4.frequency = 830.274
        fsynth4.amplitude = 0.3
        ftrem4 = AKTremolo(self.fsynth4, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ftrem4.start()
        
        fsynth5.frequency = 933.586
        fsynth5.amplitude = 0.3
        ftrem5 = AKTremolo(self.fsynth5, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ftrem5.start()
        
        fsynth6.frequency = 732.632
        fsynth6.amplitude = 0.3
        ftrem6 = AKTremolo(self.fsynth6, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ftrem6.start()
        
        fsynth7.frequency = 479.151
        fsynth7.amplitude = 0.3
        ftrem7 = AKTremolo(self.fsynth7, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ftrem7.start()
        
        fsynth8.frequency = 1998.707
        fsynth8.amplitude = 0.2
        ftrem8 = AKTremolo(self.fsynth8, frequency: random(in: 0.02...0.05), depth: 0.6, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ftrem8.start()
        
        fsynth9.frequency = 639.861
        fsynth9.amplitude = 0.3
        ftrem9 = AKTremolo(self.fsynth9, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ftrem9.start()
        
        fsynth10.frequency = 639.861
        fsynth10.amplitude = 0.3
        ftrem10 = AKTremolo(self.fsynth10, frequency: random(in: 0.02...0.05), depth: 0.7, waveform: AKTable(.positiveSine, phase: Float(randomFloat())))
        ftrem10.start()
        
        fsynth.start()
        fsynth2.start()
        fsynth3.start()
        fsynth4.start()
        fsynth5.start()
        fsynth6.start()
        fsynth7.start()
        fsynth8.start()
        fsynth9.start()
        fsynth10.start()
        
        csynth.start()
        csynth2.start()
        csynth3.start()
        csynth4.start()
        csynth5.start()
        csynth6.start()
        csynth7.start()
        csynth8.start()
        csynth9.start()
        csynth10.start()
        csynth11.start()
        csynth12.start()
        csynth13.start()
        
        ctremMix = AKMixer(ctrem, ctrem2, ctrem3, ctrem4, ctrem5, ctrem6, ctrem7, ctrem8, ctrem9, ctrem10, ctrem11, ctrem12, ctrem13)
        ftremMix = AKMixer(ftrem, ftrem2, ftrem3, ftrem4, ftrem5, ftrem6, ftrem7, ftrem8, ftrem9, ftrem10)
        
        cEnv = AKAmplitudeEnvelope(ctremMix, attackDuration: 2, decayDuration: 0.1, sustainLevel: 1, releaseDuration: 0.8)
        fEnv = AKAmplitudeEnvelope(ftremMix, attackDuration: 2, decayDuration: 0.1, sustainLevel: 1, releaseDuration: 0.8)
        
        envMix = AKMixer(cEnv, fEnv)
        
        func ssSet() -> Double {
            self.envMix.volume = vcSingleton.sSVol
            return envMix.volume
        }
    
        vcSingleton.changeScape = ssSet
    
 
        
        envMix.volume = vcSingleton.sSVol
        
        rev = AKReverb(envMix, dryWetMix: 1)
        rev.start()
        
        
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
        
        
        samplerMix.start()
        samplerMix.volume = vcSingleton.singletonSampVol
        
        finalMix = AKMixer(rev, samplerMix)
        finalMix.start()
        
        AudioKit.output = finalMix
        do{
            try
            AudioKit.start()
        } catch{print("error")}
    }
    
    func reset(){
        //set up C synths
        ctrem.start()
        ctrem2.start()
        ctrem3.start()
        ctrem4.start()
        ctrem5.start()
        ctrem6.start()
        ctrem7.start()
        ctrem8.start()
        ctrem9.start()
        ctrem10.start()
        ctrem11.start()
        ctrem12.start()
        ctrem13.start()
        
        
        //set up F synths
        ftrem.start()
        ftrem2.start()
        ftrem3.start()
        ftrem4.start()
        ftrem5.start()
        ftrem6.start()
        ftrem7.start()
        ftrem8.start()
        ftrem9.start()
        ftrem10.start()
        
        fsynth.start()
        fsynth2.start()
        fsynth3.start()
        fsynth4.start()
        fsynth5.start()
        fsynth6.start()
        fsynth7.start()
        fsynth8.start()
        fsynth9.start()
        fsynth10.start()
        
        csynth.start()
        csynth2.start()
        csynth3.start()
        csynth4.start()
        csynth5.start()
        csynth6.start()
        csynth7.start()
        csynth8.start()
        csynth9.start()
        csynth10.start()
        csynth11.start()
        csynth12.start()
        csynth13.start()
        
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
        
        rev.start()
        samplerMix.start()
        finalMix.start()
        
        AudioKit.output = finalMix
        do{
            try AudioKit.start()
        } catch{print("error")}
        
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
    
    //MARK make VolumeViewController updates take effect
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

