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

extension UITraitCollection {
    static let iPadSizeClass = UITraitCollection(traitsFrom: [ UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.pad),
                                                               UITraitCollection(horizontalSizeClass: UIUserInterfaceSizeClass.regular),
                                                               UITraitCollection(verticalSizeClass: UIUserInterfaceSizeClass.regular),
                                                               ])
    
}

extension CGSize {
    
    enum iPad {
        static let pro10and5 = CGSize(width: 0, height: 0)
        static let pro12and9 = CGSize(width: 0, height: 0)
        static let pro9and7 = CGSize(width: 0, height: 0)
    }
    
}

extension CGSize {
    var rotated: CGSize {
        return CGSize(width: height, height: width)
    }
    var splitViewHalf: CGSize {
        return CGSize(width: width/2, height: height)
    }
    var splitViewTwoThirds: CGSize {
        return CGSize(width: (width/3)*2, height: height)
    }
    var splitViewOneThird: CGSize {
        return CGSize(width: width/3, height: height)
    }
}

class HostWindow: UIWindow {
    
    
    public var presentation: Presentation
    //var orientation: UIInterfaceOrientation?
    

    
    struct Presentation {
        
        let name: String
        let size: CGSize
        let traitCollection: UITraitCollection
        let mask: UIView?
        
        enum iPad {
            enum pro12 {
                enum portrait{
                    
                    static let fullScreen = Presentation(
                        name: "iPad 12.9 Portrait FullScreen",
                        size: CGSize.iPad.pro12and9,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let twoThirds = Presentation(
                        name: "iPad 12.9 Portrait SplitView 2:3",
                        size: CGSize.iPad.pro12and9.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let oneThirds = Presentation(
                        name: "iPad 12.9 Portrait SplitView 1:3",
                        size: CGSize.iPad.pro12and9.splitViewOneThird,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                }
                enum landscape {
                    
                    static let fullScreen = Presentation(
                        name: "iPad 12.9 Landscape FullScreen",
                        size: CGSize.iPad.pro12and9.rotated,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let half = Presentation(
                        name: "iPad 12.9 Landscape SplitView 1:2",
                        size: CGSize.iPad.pro12and9.rotated.splitViewHalf,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let twoThird = Presentation(
                        name: "iPad 12.9 Landscape SplitView 2:3",
                        size: CGSize.iPad.pro12and9.rotated.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let oneThird = Presentation(
                        name: "iPad 12.9 Landscape SplitView 1:3",
                        size: CGSize.iPad.pro12and9.rotated.splitViewOneThird,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                }
            }
            enum pro10 {
                enum portrait {
                    
                    static let fullScreen = Presentation(
                        name: "iPad 10.5 FullScreen",
                        size: CGSize.iPad.pro10and5,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let TwoThirds = Presentation(
                        name: "iPad 10.5 Portrait SplitView 2:3",
                        size: CGSize.iPad.pro10and5.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let OneThirds = Presentation(
                        name: "iPad 10.5 Portrait SplitView 1:3",
                        size: CGSize.iPad.pro10and5.splitViewOneThird,
                        traitCollection: UITraitCollection.iPadSizeClass)
                }
                enum landscape {
                    static let landscape = Presentation(
                        name: "iPad 10.5 Landscape FullScreen",
                        size: CGSize.iPad.pro10and5.rotated,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let half = Presentation(
                        name: "iPad 10.5 Landscape SplitView 1:2",
                        size: CGSize.iPad.pro10and5.rotated.splitViewHalf,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let twoThird = Presentation(
                        name: "iPad 10.5 Landscape SplitView 2:3",
                        size: CGSize.iPad.pro10and5.rotated.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let oneThird = Presentation(
                        name: "iPad 10.5 Landscape SplitView 1:2",
                        size: CGSize.iPad.pro10and5.rotated.splitViewOneThird,
                        traitCollection: UITraitCollection.iPadSizeClass)
                }
            }
            
            enum pro9 {
                enum portrait {
                    
                    static let fullScreen = Presentation(
                        name: "iPad 10.5 FullScreen",
                        size: CGSize.iPad.pro9and7,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let TwoThirds = Presentation(
                        name: "iPad 10.5 Portrait SplitView 2:3",
                        size: CGSize.iPad.pro9and7.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let OneThirds = Presentation(
                        name: "iPad 10.5 Portrait SplitView 1:3",
                        size: CGSize.iPad.pro9and7.splitViewOneThird,
                        traitCollection: UITraitCollection.iPadSizeClass)
                }
                enum landscape {
                    static let landscape = Presentation(
                        name: "iPad 10.5 Landscape FullScreen",
                        size: CGSize.iPad.pro9and7.rotated,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let half = Presentation(
                        name: "iPad 10.5 Landscape SplitView 1:2",
                        size: CGSize.iPad.pro9and7.rotated.splitViewHalf,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let twoThird = Presentation(
                        name: "iPad 10.5 Landscape SplitView 2:3",
                        size: CGSize.iPad.pro9and7.rotated.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let oneThird = Presentation(
                        name: "iPad 10.5 Landscape SplitView 1:2",
                        size: CGSize.iPad.pro9and7.rotated.splitViewOneThird,
                        traitCollection: UITraitCollection.iPadSizeClass)
                }
            }
            
        }
        
    
        static let iPhoneXPortrait = Presentation(name: "iPhoneXPortrait", size: CGSize(width: 375.0, height: 812.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone), mask: UIImageView(image: UIImage(named: "maskTwo")))
        static let iPhoneXLandscapeLeft = Presentation(name: "iPhoneXLandscapeLeft", size: CGSize(width: 812.0, height: 375.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone), mask: UIImageView(image: UIImage(named: "maskTwo")))
        static let iPhoneXLandscapeRight = Presentation(name: "iPhoneXLandscapeRight", size: CGSize(width: 812.0, height: 375.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone), mask: UIImageView(image: UIImage(named: "maskTwo")))
        static let iPhone6PlusPortrait = Presentation(name: "iPhone6PlusPortrait", size: CGSize(width: 414.0, height: 736.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPhone6PlusLandscape = Presentation(name: "iPhone6PlusLandscape", size: CGSize(width: 736.0, height: 414.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPhone6Portrait = Presentation(name: "iPhone6Portrait", size: CGSize(width: 375.0, height: 667.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPhone6Landscape = Presentation(name: "iPhone6Landscape", size: CGSize(width: 667.0, height: 375.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPhone5Portrait = Presentation(name: "iPhone5Portrait", size: CGSize(width: 320.0, height: 568.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPhone5Landscape = Presentation(name: "iPhone5Landscape", size: CGSize(width: 568.0, height: 320.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPhone4Portrait = Presentation(name: "iPhone4Portrait", size: CGSize(width: 320.0, height: 480.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPhone4Landscape = Presentation(name: "iPhone4Landscape", size: CGSize(width: 480.0, height: 320.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPadAirPortrait = Presentation(name: "iPadAirPortrait", size: , traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPadAirLandscape = Presentation(name: "iPadAirLandscape", size: CGSize(width: 1024.0, height: 768.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPadAir2Portrait23SplitView = Presentation(name: "iPadAir2Portrait23SplitView", size: CGSize(width: 320.0, height: 480.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPadAir2Landscape23SplitView = Presentation(name: "iPadAir2Landscape23SplitView", size: CGSize(width: 480.0, height: 320.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPadAir2Portrait13SplitView = Presentation(name: "iPadAir2Portrait13SplitView", size: CGSize(width: 320.0, height: 480.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPadAir2Landscape13SplitView = Presentation(name: "iPadAir2Landscape13SplitView", size: CGSize(width: 480.0, height: 320.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPadAir2Portrait12SplitView = Presentation(name: "iPadAir2Portrait12SplitView", size: CGSize(width: 320.0, height: 480.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        static let iPadAir2Landscape12SplitView = Presentation(name: "iPadAir2Landscape12SplitView", size: CGSize(width: 480.0, height: 320.0), traitCollection: UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.phone))
        
        private init(name: String, size: CGSize, traitCollection: UITraitCollection, mask: UIView? = nil){
            self.name = name
            self.size = size
            self.traitCollection = traitCollection
            self.mask = mask
        }
    }
    
    public init() {
      super.init()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func iPhoneXMask() -> UIImageView {
        let image = UIImage(named: "maskTwo")!
        let imageView = UIImageView(image: image)
        //imageView?.frame = (self.bounds)
        return imageView
    }
    
    
}

open class SnapshotTest: FBSnapshotTestCase {
    
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
        HostWindow.Presentation.iPad.portrait
        
        //let image = UIImage(named: "maskTwo")!
       // let imageView = UIImageView(image: image)
        //imageView.frame = (window?.bounds)!
        //window?.mask = imageView
        window?.rootViewController = hostViewController
        window?.makeKeyAndVisible()
        
        
        FBSnapshotVerifyView(window!, identifier: "identifier", file: file, line: line)
    }
}

