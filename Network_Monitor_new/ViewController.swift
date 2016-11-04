//
//  ViewController.swift
//  Network Monitor
//
//  Created by amitverma on 28/04/16.
//  Copyright © 2016 Amit Verma. All rights reserved.
//

import UIKit

class ViewController: UIViewController
{

    @IBOutlet var image: UIImageView!
    
    @IBOutlet var username: UITextField!
    
    @IBOutlet var pass: UITextField!
    
    @IBOutlet var label: UILabel!
    
    @IBAction func submit(sender: AnyObject)
    {
        let usr="Amitverma"
        let password="pass"
        let empty:String=""
        print(username.text)
        print(pass.text)
        
        if (username.text==usr) && (pass.text==password)
        {
            label.text="Credentials Correct"
            label.textColor=UIColor.blueColor()
            username.resignFirstResponder()
            pass.resignFirstResponder()
            username.text=""
            pass.text=""
            
            self.performSegueWithIdentifier("takemetologinpage", sender:self)
        }
        else if (username.text==empty || pass.text==empty)
        {
            label.text="Please Enter Credentials"
            label.textColor=UIColor.greenColor()
            username.resignFirstResponder()
            pass.resignFirstResponder()
        }
        else{
            label.text="Credentials not Correct"
            label.textColor=UIColor.redColor()
            username.text=""
            pass.text=""
            username.resignFirstResponder()
            pass.resignFirstResponder()
            
            
        }
        
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let Min=CGFloat(-50.0)
        let Max=CGFloat(50.0)
        
        let xMotion=UIInterpolatingMotionEffect(keyPath: "center.x", type: .TiltAlongHorizontalAxis)
        xMotion.minimumRelativeValue=Min
        xMotion.maximumRelativeValue=Max
        
        let yMotion=UIInterpolatingMotionEffect(keyPath: "center.y", type: .TiltAlongHorizontalAxis)
        
        yMotion.minimumRelativeValue=Min
        yMotion.maximumRelativeValue=Max
        
        let motionEffectsGroup=UIMotionEffectGroup()
        motionEffectsGroup.motionEffects=[xMotion,yMotion]
        image.addMotionEffect(motionEffectsGroup)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

