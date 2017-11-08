//
//  File.swift
//  Tests
//
//  Created by rtysiachnik on 11/1/17.
//  Copyright © 2017 One by AOL : Publishers. All rights reserved.
//
//
import FBSnapshotTestCase
import UIKit

class HostWindow: UIWindow {
    
    var image: UIImage?
    var imageView: UIImageView?
    public var targetDevice: Device
    //var orientation: UIInterfaceOrientation?
    
    public enum Device {
        case iPhoneX
        case iPhone6Plus
        case iPhone6
        case iPhoneSE
        case iPad
        
        func getCGRect() -> CGRect? {
            switch self {
            case .iPhoneX:
                return CGRect(x: 0.0, y: 0.0, width: 375.0, height: 812.0)
            case .iPhone6Plus:
                return CGRect(x: 0.0, y: 0.0, width: 414.0, height: 736.0)
            default:
                return nil
            }
        }
    }
    
    public init(targetDevice: Device) {
      self.targetDevice = targetDevice
        guard let cGRect = self.targetDevice.getCGRect() else {
            return
        }
      super.init(frame: cGRect)
        if self.targetDevice == Device.iPhoneX {
            iPhoneXMask()
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func iPhoneXMask(){
        image = UIImage(named: "maskTwo")!
        imageView = UIImageView(image: image)
        imageView?.frame = (self.bounds)
        self.mask = imageView
    }
    
    
}

open class SnapshotTest: FBSnapshotTestCase {
    
    let devices: [Device]
    
    override open func setUp() {
        super.setUp()
        recordMode = nil != ProcessInfo.processInfo.environment["RECORD_MODE"]
        isDeviceAgnostic = true
    }
    
    public func verify(
        _ controller: UIViewController,
        in orientation: UIInterfaceOrientationMask,
        file: StaticString = #file,
        line: UInt = #line) {
        
        let hostViewController = HostViewController()
        hostViewController.overridedSupportedInterfaceOrientations = orientation
        hostViewController.childViewController = controller
        hostViewController.view.backgroundColor = .green
        hostViewController.view.tintColor = .blue
        
        var window: HostWindow?
        window = HostWindow()
        
        //let image = UIImage(named: "maskTwo")!
       // let imageView = UIImageView(image: image)
        //imageView.frame = (window?.bounds)!
        //window?.mask = imageView
        window?.rootViewController = hostViewController
        window?.makeKeyAndVisible()
        
        
        FBSnapshotVerifyView(window!, identifier: "identifier", file: file, line: line)
    }
}


