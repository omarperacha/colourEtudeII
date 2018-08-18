//
//  VolumeViewController.swift
//  Colour Etude II
//
//  Created by Omar Peracha on 26/02/2017.
//  Copyright © 2017 Omar Peracha. All rights reserved.
//

import UIKit

class VolumeViewController: UIViewController {

    @IBOutlet weak var xButton: UIButton!
    
    @IBOutlet weak var smoothButton: UIButton!
    
    @IBOutlet weak var pulseButton: UIButton!
    
    @IBOutlet weak var mixButton: UIButton!
    
    let step: Float = 1.5
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        sampVolSlider.value = Float(vcSingleton.singletonSampVol)
        sounscapeVolSlider.value = Float(vcSingleton.sSVol)
        
        self.xButton.layer.cornerRadius = 5
        self.xButton.layer.borderWidth = 0.5
        self.xButton.layer.borderColor = UIColor.lightGray.cgColor
        
        self.smoothButton.layer.cornerRadius = 5
        self.smoothButton.layer.borderWidth = 1
        self.smoothButton.layer.borderColor = UIColor.white.cgColor
        smoothButton.setTitleColor(.white, for: .normal)

        
        self.pulseButton.layer.cornerRadius = 5
        self.pulseButton.layer.borderWidth = 1
        self.pulseButton.layer.borderColor = UIColor.gray.cgColor
        
        self.mixButton.layer.cornerRadius = 5
        self.mixButton.layer.borderWidth = 1
        self.mixButton.layer.borderColor = UIColor.gray.cgColor
    }
    
    @IBAction func dismiss(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
   
    @IBOutlet weak var sampVolSlider: UISlider!
    
    @IBOutlet weak var sounscapeVolSlider: UISlider!
    
    @IBAction func samplerVolChange(_ sender: Any) {
        let roundedValue = round(sampVolSlider.value / step) * step
        sampVolSlider.value = roundedValue
        vcSingleton.singletonSampVol = Double(sampVolSlider.value)
    }
    
    
    @IBAction func soundscapeVolChange(_ sender: Any) {
        vcSingleton.sSVol = Double(sounscapeVolSlider.value)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func makeSmooth(_ sender: Any) {
        Conductor!.makeSmoothed()
        
        smoothButton.layer.borderColor = UIColor.white.cgColor
        smoothButton.setTitleColor(.white, for: .normal)
        
        mixButton.layer.borderColor = UIColor.gray.cgColor
        mixButton.setTitleColor(.black, for: .normal)
        
        pulseButton.layer.borderColor = UIColor.gray.cgColor
        pulseButton.setTitleColor(.black, for: .normal)


    }
    
    @IBAction func makePulse(_ sender: Any) {
        Conductor!.makePulsing()
        
        smoothButton.layer.borderColor = UIColor.gray.cgColor
        smoothButton.setTitleColor(.black, for: .normal)
        
        mixButton.layer.borderColor = UIColor.gray.cgColor
        mixButton.setTitleColor(.black, for: .normal)
        
        pulseButton.layer.borderColor = UIColor.white.cgColor
        pulseButton.setTitleColor(.white, for: .normal)
    }
    
    @IBAction func makeMix(_ sender: Any) {
        Conductor!.makeMixed()
        
        smoothButton.layer.borderColor = UIColor.gray.cgColor
        smoothButton.setTitleColor(.black, for: .normal)
        
        mixButton.layer.borderColor = UIColor.white.cgColor
        mixButton.setTitleColor(.white, for: .normal)
        
        pulseButton.layer.borderColor = UIColor.gray.cgColor
        pulseButton.setTitleColor(.black, for: .normal)
    }
    
}
