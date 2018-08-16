//
//  singleton.swift
//  Colour Etude II
//
//  Created by Omar Peracha on 27/02/2017.
//  Copyright © 2017 Omar Peracha. All rights reserved.
//

import Foundation

public class Singleton: NSObject {
    

    public var singletonSampVol = samplerVolumeGlobal {
        didSet{
            changeSamp!()
        }
    }
    
    public var sSVol = soundScapeVolumeGlobal {
        didSet{
            changeScape!()
        }
    }
    
    public var changeSamp: (() -> Double)?
    
    public var changeScape: (() -> Double)?
    


}
