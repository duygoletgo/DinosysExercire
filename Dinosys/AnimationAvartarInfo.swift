//
//  AnimationAvartarInfo.swift
//  Dinosys
//
//  Created by Duy on 12/19/16.
//  Copyright © 2016 QuanChung. All rights reserved.
//

import UIKit

struct AnimationAvartarInfo{
    var imvAvarta:UIImageView
    var frame:CGRect
    init(imvAvartar: UIImageView, frame: CGRect) {
        self.imvAvarta = imvAvartar;
        self.frame = frame
    }
}
