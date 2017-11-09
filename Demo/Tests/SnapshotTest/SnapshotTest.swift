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

extension CGRect {
    //CGPoint(x: 0, y: 0)
    static func getCGRectBySize(size: CGSize) -> CGRect {
        
        return CGRect(origin: CGPoint(x: 0, y: 0), size: size)
    
    }
}

extension UITraitCollection {
    static let iPadSizeClass = UITraitCollection(traitsFrom: [ UITraitCollection(userInterfaceIdiom: UIUserInterfaceIdiom.pad),
                                                               UITraitCollection(horizontalSizeClass: UIUserInterfaceSizeClass.regular),
                                                               UITraitCollection(verticalSizeClass: UIUserInterfaceSizeClass.regular),
                                                               ])
    
}

extension CGSize {
    
    enum iPad {
        
        static let pro12and9 = CGSize(width: 1024, height: 1366)
        static let pro10and5 = CGSize(width: 834, height: 1112)
        static let pro9and7 = CGSize(width: 768, height: 1024)
        
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

public class HostWindow: UIWindow {
    
    
    var presentation: Presentation?

   public struct Presentation {
        
        let name: String
        let size: CGSize
        let traitCollection: UITraitCollection
        let mask: UIView?
        
       public enum iPad {
            public enum pro12 {
                public enum portrait{
                    
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
            public enum pro10 {
                public enum portrait {
                    
                    public static let fullScreen = Presentation(
                        name: "iPad 10.5 FullScreen",
                        size: CGSize.iPad.pro10and5,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    public static let TwoThirds = Presentation(
                        name: "iPad 10.5 Portrait SplitView 2:3",
                        size: CGSize.iPad.pro10and5.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    public static let OneThirds = Presentation(
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
                    
                    static let twoThirds = Presentation(
                        name: "iPad 10.5 Portrait SplitView 2:3",
                        size: CGSize.iPad.pro9and7.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPadSizeClass)
                    
                    static let oneThirds = Presentation(
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
        
        private init(name: String, size: CGSize, traitCollection: UITraitCollection, mask: UIView? = nil){
            self.name = name
            self.size = size
            self.traitCollection = traitCollection
            self.mask = mask
        }
    }
    
    init(presentation: Presentation) {
        super.init(frame: CGRect.getCGRectBySize(size: presentation.size))
        self.presentation = presentation
        self.mask = presentation.mask
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

typealias Presentation = HostWindow.Presentation

open class SnapshotTest: FBSnapshotTestCase {
    
    override open func setUp() {
        super.setUp()
        recordMode = nil != ProcessInfo.processInfo.environment["RECORD_MODE"]
        isDeviceAgnostic = true
    }
    
    var window: HostWindow?

    public func verify(
        _ controller: UIViewController,
        presentation: HostWindow.Presentation,
        file: StaticString = #file,
        line: UInt = #line) {
        
        
       //let hostViewController = HostViewController()
        //hostViewController.overridedSupportedInterfaceOrientations = orientation
        //hostViewController.childViewController = controller
        //hostViewController.view.backgroundColor = .green
        //hostViewController.view.tintColor = .blue
        
        window = HostWindow(presentation: presentation)
       
        window?.rootViewController = controller
        window?.makeKeyAndVisible()
        
        
        FBSnapshotVerifyView(window!, identifier: "identifier", file: file, line: line)
    
}
}
