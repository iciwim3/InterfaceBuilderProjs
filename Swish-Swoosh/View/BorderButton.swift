//
//  BorderButton.swift
//  Swish-Swoosh
//
//  Created by Sain-R Edwards Jr. on 12/13/17.
//  Copyright © 2017 Appybuildmore Apps. All rights reserved.
//

import UIKit

class BorderButton: UIButton {

    override func awakeFromNib() {
        super.awakeFromNib()
        layer.borderWidth = 2.0
        layer.borderColor = UIColor.white.cgColor
    }

}
