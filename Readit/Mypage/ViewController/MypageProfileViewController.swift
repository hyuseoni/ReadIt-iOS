//
//  MypageProfileViewController.swift
//  Readit
//
//  Created by 황유선 on 10/07/2019.
//  Copyright © 2019 황유선. All rights reserved.
//

import UIKit

class MypageProfileViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var nicknameField: UITextField!
    @IBOutlet weak var completeButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.profileImage.roundedImage()
        self.nicknameField.textFieldUnderLine(line: 1.0, color: UIColor.grey)
        nicknameField.becomeFirstResponder()
        
        completeButton.layer.cornerRadius = 4
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }

    @IBAction func backButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func completeButton(_ sender: UIButton) {
    }
    
    

}
