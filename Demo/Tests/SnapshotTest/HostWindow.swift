//
//  HostWindow.swift
//  SnapshotTest
//
//  Created by rtysiachnik on 11/10/17.
//  Copyright © 2017 One by AOL : Publishers. All rights reserved.
//

import UIKit

public class HostWindow: UIWindow {
    
    public var presentation: Presentation?
    
    init(presentation: Presentation) {
        super.init(frame: CGRect.getCGRectBy(size: presentation.size))
        self.presentation = presentation
        presentation.mask?.frame = CGRect.getCGRectBy(size: presentation.size)
        self.mask = presentation.mask
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public struct Presentation {
        
        let name: String
        let size: CGSize
        let traitCollection: UITraitCollection
        let mask: UIView?
        
        public enum iPhone{
            public enum X {
                public static var portrait: Presentation {
                    return Presentation(
                        name: "iPhone X Portrait",
                        size: CGSize.iPhone.X,
                        traitCollection: UITraitCollection.iPhone.iPhoneRegular.portrait,
                        mask: iPhoneXMask.portrait)
                }
                public static var landscapeLeft: Presentation {
                    return Presentation(
                        name: "iPhone X Landscape Left",
                        size: CGSize.iPhone.X.rotated,
                        traitCollection: UITraitCollection.iPhone.iPhoneRegular.portrait,
                        mask: iPhoneXMask.landscapeLeft)
                }
                public static var landscapeRight: Presentation {
                    return Presentation(
                        name: "iPhone X Landscape Right",
                        size: CGSize.iPhone.X.rotated,
                        traitCollection: UITraitCollection.iPhone.iPhoneRegular.portrait,
                        mask: iPhoneXMask.landscapeRight)
                }
            }
            public enum Eight {
                public static var portrait: Presentation {
                    return Presentation(
                        name: "iPhone 8 Portrait",
                        size: CGSize.iPhone.Eight,
                        traitCollection: UITraitCollection.iPhone.iPhoneRegular.portrait,
                        mask: nil)
                }
                public static var landscape: Presentation {
                    return Presentation(
                        name: "iPhone 8 Landscape",
                        size: CGSize.iPhone.Eight.rotated,
                        traitCollection: UITraitCollection.iPhone.iPhoneRegular.portrait,
                        mask: nil)
                }
                
            }
            public enum EightPlus {
                public static var portrait: Presentation {
                    return Presentation(
                        name: "iPhone 8 Plus Portrait",
                        size: CGSize.iPhone.EightPlus,
                        traitCollection: UITraitCollection.iPhone.iPhonePlus.portrait,
                        mask: nil)
                }
                public static var landscape: Presentation {
                    return Presentation(
                        name: "iPhone 8 Plus Landscape",
                        size: CGSize.iPhone.EightPlus.rotated,
                        traitCollection: UITraitCollection.iPhone.iPhonePlus.portrait,
                        mask: nil)
                }
            }
            public enum SE {
                public static var portrait: Presentation {
                    return Presentation(
                        name: "iPhone SE Portrait",
                        size: CGSize.iPhone.SE,
                        traitCollection: UITraitCollection.iPhone.iPhoneRegular.portrait, mask: nil)
                }
                public static var landscape: Presentation {
                    return Presentation(
                        name: "iPhone SE Landscape",
                        size: CGSize.iPhone.SE.rotated,
                        traitCollection: UITraitCollection.iPhone.iPhoneRegular.portrait, mask: nil)
                }
                
            }
        }
        
        public enum iPad {
            public enum Pro12_9 {
                public enum Portrait{
                    public static let fullScreen = Presentation(
                        name: "iPad 12.9 Portrait FullScreen",
                        size: CGSize.iPad.Pro12_9,
                        traitCollection: UITraitCollection.iPad.fullScreen)
                    
                    public static let twoThirds = Presentation(
                        name: "iPad 12.9 Portrait SplitView 2:3",
                        size: CGSize.iPad.Pro12_9.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPad.splitTwoThirds)
                    
                    public static let oneThirds = Presentation(
                        name: "iPad 12.9 Portrait SplitView 1:3",
                        size: CGSize.iPad.Pro12_9.splitViewOneThird,
                        traitCollection: UITraitCollection.iPad.splitOneThird)
                    
                }
                public enum Landscape {
                    
                    public static let fullScreen = Presentation(
                        name: "iPad 12.9 Landscape FullScreen",
                        size: CGSize.iPad.Pro12_9.rotated,
                        traitCollection: UITraitCollection.iPad.fullScreen)
                    
                    public static let half = Presentation(
                        name: "iPad 12.9 Landscape SplitView 1:2",
                        size: CGSize.iPad.Pro12_9.rotated.splitViewHalf,
                        traitCollection: UITraitCollection.iPad.splitHalfFor12_9)
                    
                    public static let twoThird = Presentation(
                        name: "iPad 12.9 Landscape SplitView 2:3",
                        size: CGSize.iPad.Pro12_9.rotated.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPad.splitTwoThirds)
                    
                    public static let oneThird = Presentation(
                        name: "iPad 12.9 Landscape SplitView 1:3",
                        size: CGSize.iPad.Pro12_9.rotated.splitViewOneThird,
                        traitCollection: UITraitCollection.iPad.splitOneThird)
                    
                }
            }
            public enum Pro10_5 {
                public enum Portrait {
                    
                    public static let fullScreen = Presentation(
                        name: "iPad 10.5 Portrait FullScreen",
                        size: CGSize.iPad.Pro10_5,
                        traitCollection: UITraitCollection.iPad.fullScreen)
                    
                    public static let TwoThirds = Presentation(
                        name: "iPad 10.5 Portrait SplitView 2:3",
                        size: CGSize.iPad.Pro10_5.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPad.splitTwoThirds)
                    
                    public static let OneThirds = Presentation(
                        name: "iPad 10.5 Portrait SplitView 1:3",
                        size: CGSize.iPad.Pro10_5.splitViewOneThird,
                        traitCollection: UITraitCollection.iPad.splitOneThird)
                }
                public enum Landscape {
                    public static let fullScreen = Presentation(
                        name: "iPad 10.5 Landscape FullScreen",
                        size: CGSize.iPad.Pro10_5.rotated,
                        traitCollection: UITraitCollection.iPad.fullScreen)
                    
                    public static let half = Presentation(
                        name: "iPad 10.5 Landscape SplitView 1:2",
                        size: CGSize.iPad.Pro10_5.rotated.splitViewHalf,
                        traitCollection: UITraitCollection.iPad.splitHalf)
                    
                    public static let twoThird = Presentation(
                        name: "iPad 10.5 Landscape SplitView 2:3",
                        size: CGSize.iPad.Pro10_5.rotated.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPad.splitTwoThirds)
                    
                    public static let oneThird = Presentation(
                        name: "iPad 10.5 Landscape SplitView 1:3",
                        size: CGSize.iPad.Pro10_5.rotated.splitViewOneThird,
                        traitCollection: UITraitCollection.iPad.splitHalf)
                }
            }
            
            public enum Pro9_7 {
                public enum Portrait {
                    public static let fullScreen = Presentation(
                        name: "iPad 9.7 Portrait FullScreen",
                        size: CGSize.iPad.Pro9_7,
                        traitCollection: UITraitCollection.iPad.fullScreen)
                    
                    public static let TwoThirds = Presentation(
                        name: "iPad 9.7 Portrait SplitView 2:3",
                        size: CGSize.iPad.Pro9_7.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPad.splitTwoThirds)
                    
                    public static let OneThirds = Presentation(
                        name: "iPad 9.7 Portrait SplitView 1:3",
                        size: CGSize.iPad.Pro9_7.splitViewOneThird,
                        traitCollection: UITraitCollection.iPad.splitOneThird)
                }
                public enum Landscape {
                    public static let fullScreen = Presentation(
                        name: "iPad 9.7 Landscape FullScreen",
                        size: CGSize.iPad.Pro9_7.rotated,
                        traitCollection: UITraitCollection.iPad.fullScreen)
                    
                    public static let half = Presentation(
                        name: "iPad 9.7 Landscape SplitView 1:2",
                        size: CGSize.iPad.Pro9_7.rotated.splitViewHalf,
                        traitCollection: UITraitCollection.iPad.splitHalf)
                    
                    public static let twoThird = Presentation(
                        name: "iPad 9.7 Landscape SplitView 2:3",
                        size: CGSize.iPad.Pro9_7.rotated.splitViewTwoThirds,
                        traitCollection: UITraitCollection.iPad.splitTwoThirds)
                    
                    public static let oneThird = Presentation(
                        name: "iPad 9.7 Landscape SplitView 1:3",
                        size: CGSize.iPad.Pro9_7.rotated.splitViewOneThird,
                        traitCollection: UITraitCollection.iPad.splitHalf)
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
    
    
}

