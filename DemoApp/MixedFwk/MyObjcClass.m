//
//  MyObjcClass.m
//  MixedFwk
//
//  Created by Eidinger, Marco on 11/14/22.
//

#import "MyObjcClass.h"
#import "MixedFwk/MixedFwk-Swift.h"

@implementation MyObjcClass
+(void)load {
    NSLog(@"MyObjClass loaded");
    MySwiftClass *swiftClass = [[MySwiftClass alloc] init];
    [swiftClass writeLog];
}
@end
