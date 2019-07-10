//
//  MypageAlarmViewController.swift
//  Readit
//
//  Created by 황유선 on 07/07/2019.
//  Copyright © 2019 황유선. All rights reserved.
//

import UIKit

class MypageAlarmViewController: UIViewController {

    @IBOutlet weak var topView: UIView!
    
    @IBOutlet weak var deviceSetLabel: UILabel!
    @IBOutlet weak var deviceSetButton: UIButton!
    
    
    @IBOutlet weak var pushAlarmSwitch: UISwitch!
    @IBOutlet weak var readitTimeSwitch: UISwitch!
    
    @IBOutlet weak var readitTimeLabel1: UILabel!
    @IBOutlet weak var readitTimeLabel2: UILabel!
    @IBOutlet weak var alarmImage: UIImageView!
    @IBOutlet weak var timeSetButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        topView.layer.borderWidth = 0.2
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    

}
