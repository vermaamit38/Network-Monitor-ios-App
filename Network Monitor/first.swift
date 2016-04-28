//
//  first.swift
//  Network Monitor
//
//  Created by amitverma on 28/04/16.
//  Copyright © 2016 Amit Verma. All rights reserved.
//


import UIKit
class first: UIViewController {

    
    @IBOutlet var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let Min=CGFloat(-50.0)
        let Max=CGFloat(50.0)
        
        let xMotion=UIInterpolatingMotionEffect(keyPath: "center.x", type: .TiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue=Min
        xMotion.maximumRelativeValue=Max
        
       // let yMotion=UIInterpolatingMotionEffect(keyPath: "center.y", type: .TiltAlongHorizontalAxis)
        
       // yMotion.minimumRelativeValue=Min
       // yMotion.maximumRelativeValue=Max
        
        let motionEffectsGroup=UIMotionEffectGroup()
        motionEffectsGroup.motionEffects=[xMotion]
        image.addMotionEffect(motionEffectsGroup)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
