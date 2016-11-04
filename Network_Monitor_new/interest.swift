//
//  interest.swift
//  story_tutorial
//
//  Created by amitverma on 24/04/16.
//  Copyright © 2016 Amit Verma. All rights reserved.
//

import UIKit
class Interest
{//mark public api
    var tittle=""
    var description=""
    var numberofMembers=0
    var numberofPosts=0
    var featureImage:UIImage!
    
    init(tittle:String,description:String,featureImage:UIImage)
    {
        self.tittle=tittle
        self.description=description
        self.featureImage=featureImage
        numberofPosts=1
        numberofMembers=1
    }
    //markprivate
    static func createInterests()->[Interest]
    {
        return[
            Interest(tittle:"ID Amitverma Pass pass",description: "Awazing view",featureImage: UIImage(named:"screen1" )!),
            Interest(tittle:"See server from mac or from BBB ",description: "Awazing view",featureImage: UIImage(named:"screen2" )!),
            Interest(tittle:"enter pass 123",description: "Awazing view",featureImage: UIImage(named:"screen3" )!),
            Interest(tittle:"get data through javacode ",description: "Awazing view",featureImage: UIImage(named:"screen4" )!),
            Interest(tittle:"get data through database ",description: "Awazing view",featureImage: UIImage(named:"screen5" )!),
            Interest(tittle:"sample of results like number of protocol count of each user",description: "Awazing view",featureImage: UIImage(named:"screen6" )!)]
        
    }
    
}
