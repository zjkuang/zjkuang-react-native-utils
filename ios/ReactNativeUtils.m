#import "ReactNativeUtils.h"

@implementation ReactNativeUtils

RCT_EXPORT_MODULE()

// Example method
// See // https://reactnative.dev/docs/native-modules-ios
// RCT_REMAP_METHOD(multiply,
//                  multiplyWithA:(double)a withB:(double)b
//                  withResolver:(RCTPromiseResolveBlock)resolve
//                  withRejecter:(RCTPromiseRejectBlock)reject)
// {
//   NSNumber *result = @(a * b);

//   resolve(result);
// }
RCT_EXPORT_METHOD(multiply:(nonnull NSNumber *)a b:(nonnull NSNumber *)b resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)
{
  NSNumber *result = [NSNumber numberWithDouble:([a doubleValue] * [b doubleValue])];
  resolve(result);
}

RCT_EXPORT_METHOD(add:(nonnull NSNumber *)a b:(nonnull NSNumber *)b resolve:(RCTPromiseResolveBlock)resolve reject:(RCTPromiseRejectBlock)reject)
{
  NSNumber *result = [NSNumber numberWithDouble:([a doubleValue] + [b doubleValue])];
  resolve(result);
}

@end
