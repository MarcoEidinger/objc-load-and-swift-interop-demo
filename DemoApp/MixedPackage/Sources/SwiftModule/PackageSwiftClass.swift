import Foundation

@objcMembers public class PackageSwiftClass: NSObject {
    override public init() {
        print("MixedPackage.PackageSwiftClass initialized")
    }

    public func doSomeWork() {
        print("MixedPackage.PackageSwiftClass.doSomeWork called")
    }
}
