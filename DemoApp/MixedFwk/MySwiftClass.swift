//
//  MySwiftClass.swift
//  MixedFwk
//
//  Created by Eidinger, Marco on 11/14/22.
//

import Foundation

@objc public class MySwiftClass: NSObject {
    public override init() {}
    @objc public func writeLog() {
        print("Swift class printed something")
    }
}
