//
//  MyObjcClass.m
//  MixedFwk
//
//  Created by Eidinger, Marco on 11/14/22.
//

#import "FwkObjcClass.h"
#import "MixedFwk/MixedFwk-Swift.h"

@implementation FwkObjcClass
// https://developer.apple.com/documentation/objectivec/nsobject/1418815-load
+(void)load {
    NSLog(@"MixedFwk.FwkObjClass loaded");
    FwkSwiftClass *swiftClass = [[FwkSwiftClass alloc] init];
    [swiftClass doSomeWork];
}
@end

// https://developer.apple.com/library/archive/documentation/MacOSX/Conceptual/BPFrameworks/Tasks/InitializingFrameworks.html
__attribute__((constructor))
static void ModuleInitializer()
{
    static int initialized = 0;
    if (!initialized)
    {
        // Initialization code.
        initialized = 1;
        NSLog(@"MixedFwk.ModuleInitializer loaded");
    }
}
