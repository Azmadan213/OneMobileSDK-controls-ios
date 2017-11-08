//
//  HostWindow.swift
//  Demo
//
//  Created by adoroshko on 11/8/17.
//  Copyright © 2017 One by AOL : Publishers. All rights reserved.
//

import Foundation
import UIKit

class HostWindow: UIWindow {
    
    var image: UIImage?
    var imageView: UIImageView?
    
    
    enum DeviceType {
        case iPhoneX
        case anyOther
    }
    
    init() {
    //super.init(frame: UIScreen.main.bounds)
    image = UIImage(named: "maskTwo")!
    imageView = UIImageView(image: image)
    
    super.init(frame: CGRect(x: 0.0, y: 0.0, width: 375.0, height: 812.0))
    imageView?.frame = (self.bounds)
    self.mask = imageView
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

