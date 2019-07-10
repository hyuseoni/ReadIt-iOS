//
//  MypageScrapViewController.swift
//  Readit
//
//  Created by 황유선 on 07/07/2019.
//  Copyright © 2019 황유선. All rights reserved.
//

import UIKit

class MypageScrapViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var scrapButton: UIButton!
    @IBOutlet weak var highlightButton: UIButton!
    
    @IBOutlet weak var scrapView: UIView!
    @IBOutlet weak var highlightView: UIView!
    
    @IBOutlet weak var scrapLabel1: UILabel!
    @IBOutlet weak var scrapLabel2: UILabel!
    @IBOutlet weak var highlightLabel1: UILabel!
    @IBOutlet weak var highlightLabel2: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topView.layer.borderWidth = 0.2
        profileImage.roundedImage()
        
        scrapButton.layer.cornerRadius = 4
        highlightButton.layer.cornerRadius = 4
        
        highlightView.isHidden = true
    }
    
    @IBAction func scrapButton(_ sender: UIButton) {
        scrapLabel1.textColor = UIColor.white
        scrapLabel2.textColor = UIColor.white
        highlightLabel1.textColor = UIColor.whiteOpa
        highlightLabel2.textColor = UIColor.whiteOpa
        highlightView.isHidden = true
        scrapView.isHidden = false
    }
    
    @IBAction func highlightButton(_ sender: UIButton) {
        highlightLabel1.textColor = UIColor.white
        highlightLabel2.textColor = UIColor.white
        scrapLabel1.textColor = UIColor.whiteOpa
        scrapLabel2.textColor = UIColor.whiteOpa
        scrapView.isHidden = true
        highlightView.isHidden = false
    }
    
}
