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
    
    let step: Float = 1.5
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        sampVolSlider.value = Float(vcSingleton.singletonSampVol)
        sounscapeVolSlider.value = Float(vcSingleton.sSVol)
        
        self.xButton.layer.cornerRadius = 5
        self.xButton.layer.borderWidth = 0.5
        self.xButton.layer.borderColor = UIColor.lightGray.cgColor
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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
