# objc-load-and-swift-interop-demo
Demo of using NSObject's [+load()](https://developer.apple.com/documentation/objectivec/nsobject/1418815-load) function in a framework to run code automatically when the framework gets loaded. From there using a Swift class (i.e. importing Swift into Objective-C)

## Details

The DemoApp is implemented with Swift and SwiftUI.

`DemoApp` target embeds
- `MixedFwk`, a framework that contains Objective-C and Swift files.
- `MixedPackage`, a package and its library product that contains
  - `ObjcModule` with Objective-C sources only
  -  `SwiftModule` with Swift source only

Once the DemoApp gets started you can see that code of
- `FwkObjcClass` in `MixedFwk`
- `PackageObjcClass` in `MixedPackage`
is invoked automatically.

Here also interoperability between ObjcC and Swift is demonstrated as a Swift class is initialized and one of its functions gets called.

```objc
#import "FwkObjcClass.h"
#import "MixedFwk/MixedFwk-Swift.h"

@implementation FwkObjcClass
+(void)load {
    NSLog(@"MixedFwk.FwkObjClass loaded");
    FwkSwiftClass *swiftClass = [[FwkSwiftClass alloc] init];
    [swiftClass doSomeWork];
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