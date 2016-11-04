//
//  InterestCollectionViewCell.swift
//  story_tutorial
//
//  Created by amitverma on 24/04/16.
//  Copyright © 2016 Amit Verma. All rights reserved.
//

import UIKit

class InterestCollectionViewCell: UICollectionViewCell
{
    @IBOutlet weak var featuredImageView:UIImageView!
    @IBOutlet weak var interestTitleLabel:UILabel!
    
    
    var interest:Interest!
        {
        didSet
        {
            updateUI()
        }
    }
    
    private func updateUI()
    {
        interestTitleLabel?.text!=interest.tittle
        featuredImageView?.image!=interest.featureImage
        
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        self.layer.cornerRadius=10.0
        self.clipsToBounds=true
    }
    
    
}
