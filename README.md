# objc-load-and-swift-interop-demo
Demo of using NSObject's class func load() and using a Swift class there (i.e. importing Swift into Objective-C)

## Details

The DemoApp is implemented with Swift and SwiftUI.

`DemoApp` target embeds `MixedFwk`, a framework that contains Objective-C and Swift files.

Once the DemoApp gets started you can see that code of `MyObjcClass` in `MixedFwk` is invoked automatically. Here also interoperability between ObjcC and Swift is demonstrated as `MyObjcClass` will init and call a function of `MySwiftClass`.

```objc
#import "MyObjcClass.h"
#import "MixedFwk/MixedFwk-Swift.h"

@implementation MyObjcClass
+(void)load {
    NSLog(@"MyObjClass loaded");
    MySwiftClass *swiftClass = [[MySwiftClass alloc] init];
    [swiftClass writeLog];
}
@end
```

> The load() message is sent to classes and categories that are both dynamically loaded and statically linked, but only if the newly loaded class or category implements a method that can respond.

> The order of initialization is as follows:
> - All initializers in any framework you link to.
> - All +load methods in your image.
> - All C++ static initializers and C/C++ __attribute__(constructor) functions in your image.
> - All initializers in frameworks that link to you.

Source: https://developer.apple.com/documentation/objectivec/nsobject/1418815-load