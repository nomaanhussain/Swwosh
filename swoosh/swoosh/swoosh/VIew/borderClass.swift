//
//  borderClass.swift
//  swoosh
//
//  Created by Noman Hussain on 21/01/2018.
//  Copyright © 2018 Noman Hussain. All rights reserved.
//

import UIKit

class borderClass: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
        
    }

}
