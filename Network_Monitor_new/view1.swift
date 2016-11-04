//
//  view1.swift
//  story_tutorial
//
//  Created by amitverma on 24/04/16.
//  Copyright © 2016 Amit Verma. All rights reserved.
//

import Foundation
import UIKit

class view1:UIViewController
{
    //IBoutle
    @IBOutlet weak var backgroundImageView: UIImageView!
    @IBOutlet weak var collectionView:UICollectionView!
    @IBOutlet weak var currentUserProfileButton:UIButton!
    @IBOutlet weak var currentUserFullNameButton:UIButton!
    
    //IBOutlet -data source
    private var interests=Interest.createInterests()
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return .LightContent
    }
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        let topColor=UIColor(red:(15/255.0),green:(118/225.0),blue:(128/255.0),alpha:1)
        let bottomColor=UIColor(red:(84/255.0),green:(187/225.0),blue:(187/255.0),alpha:1)
        
        let gradientColors:[CGColor]=[topColor.CGColor,bottomColor.CGColor]
        let gradientLocations:[Float]=[0.0,1.0]
        
        let gradientLayer:CAGradientLayer=CAGradientLayer()
        gradientLayer.colors=gradientColors
        gradientLayer.locations=gradientLocations
        
        gradientLayer.frame=self.view.bounds
        self.view.layer.insertSublayer(gradientLayer,atIndex: 0)
        
    }
    private struct Storyboard
    {
        static let cellIdentifier="Interest Cell"
    }
    
}

extension view1:UICollectionViewDataSource
{
    
    func numberOfSectionsInCollectionView(collectionView:UICollectionView)->Int{
        return 1
    }
    func collectionView(collectionView:UICollectionView,numberOfItemsInSection section:Int)->Int
    {
        return interests.count
    }
    
    func collectionView(collectionView:UICollectionView,cellForItemAtIndexPath indexpath:NSIndexPath)->UICollectionViewCell
    {
        let cell=collectionView.dequeueReusableCellWithReuseIdentifier(Storyboard.cellIdentifier, forIndexPath: indexpath) as! InterestCollectionViewCell
        cell.interest=self.interests[indexpath.item]
        return cell
    }
    
}

extension view1:UIScrollViewDelegate
{
    func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        let layout=self.collectionView?.collectionViewLayout as!
        UICollectionViewFlowLayout
        let cellWidthIncludingSpacing = layout.itemSize.width+layout.minimumLineSpacing
        var offset=targetContentOffset.memory
        
        let index=(offset.x+scrollView.contentInset.left)/cellWidthIncludingSpacing
        
        let roundedIndex=round(index)
        
        offset=CGPoint(x:roundedIndex * cellWidthIncludingSpacing-scrollView.contentInset.left,y:-scrollView.contentInset.top)
        targetContentOffset.memory=offset
    }
    
    
}



