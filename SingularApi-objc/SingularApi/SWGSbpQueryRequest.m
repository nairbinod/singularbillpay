#import "SWGSbpQueryRequest.h"

@implementation SWGSbpQueryRequest

- (instancetype)init {
  self = [super init];

  if (self) {
    // initalise property's default value, if any
    
  }

  return self;
}

/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper
{
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"fromdate": @"fromdate", @"orderid": @"orderid", @"partnerid": @"partnerid", @"partnerkey": @"partnerkey", @"payeeid": @"payeeid", @"profileid": @"profileid", @"todate": @"todate", @"transactionreference": @"transactionreference" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"orderid", @"partnerid", @"partnerkey", @"payeeid", @"profileid", @"todate", @"transactionreference"];

  if ([optionalProperties containsObject:propertyName]) {
    return YES;
  }
  else {
    return NO;
  }
}

/**
 * Gets the string presentation of the object.
 * This method will be called when logging model object using `NSLog`.
 */
- (NSString *)description {
    return [[self toDictionary] description];
}

@end
