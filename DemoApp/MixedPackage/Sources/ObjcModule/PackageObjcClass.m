//
//  MyObjcClass.m
//  MixedFwk
//
//  Created by Eidinger, Marco on 11/14/22.
//

#import "PackageObjcClass.h"
@import SwiftModule;

@implementation PackageObjcClass
+(void)load {
    NSLog(@"MixedPackage.PackageObjcClass loaded");
    PackageSwiftClass *swiftClass = [[PackageSwiftClass alloc] init];
    [swiftClass doSomeWork];
}
@end

__attribute__((constructor))
static void MyModuleInitializer()
{
    static int initialized = 0;
    if (!initialized)
    {
        // Initialization code.
        initialized = 1;
        NSLog(@"MixedPackage.ModuleInitializer loaded");
    }
}
