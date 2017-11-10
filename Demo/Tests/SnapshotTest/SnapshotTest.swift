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

public typealias presentation = HostWindow.Presentation

open class SnapshotTest: FBSnapshotTestCase {
    
    override open func setUp() {
        super.setUp()
        isDeviceAgnostic = true
        guard let record = ProcessInfo.processInfo.environment["RECORD_MODE"] else { return }
        if record == "TRUE" {
            recordMode = true
        } else {
            recordMode = false
        }
    }
    
    public func verify(
        _ controller: UIViewController,
        for presentation: HostWindow.Presentation,
        file: StaticString = #file,
        line: UInt = #line) {
        
        let window = HostWindow(presentation: presentation)
        
        window.rootViewController = controller
        window.makeKeyAndVisible()
        FBSnapshotVerifyView(window, identifier: presentation.name , file: file, line: line)
    }
}
