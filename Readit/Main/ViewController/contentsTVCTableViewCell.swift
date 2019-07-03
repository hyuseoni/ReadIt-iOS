//
//  contentsTVCTableViewCell.swift
//  readit_test
//
//  Created by 권서연 on 02/07/2019.
//  Copyright © 2019 권서연. All rights reserved.
//

import UIKit

class contentsTVCTableViewCell: UITableViewCell {
    @IBOutlet var orangeCircle: UIView!
    @IBOutlet var thumbnail: UIImageView!
    @IBOutlet var address: UIButton!
    @IBOutlet var category: UIButton!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setViewRounded()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    
    func setViewRounded() {
        self.orangeCircle.makeRounded(cornerRadius: 3.5)
        self.address.makeRounded(cornerRadius: 4.0)
        self.thumbnail.makeRounded(cornerRadius: 10.0)
        self.category.makeRounded(cornerRadius: 4.0)
    }
    
    
}
