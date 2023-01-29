//
//  MySwiftClass.swift
//  MixedFwk
//
//  Created by Eidinger, Marco on 11/14/22.
//

import Foundation

@objcMembers public class FwkSwiftClass: NSObject {
    override public init() {
        print("MixedFwk.FwkSwiftClass initialized")
    }

    public func doSomeWork() {
        print("MixedFwk.FwkSwiftClass.doSomeWork called")
    }
}
