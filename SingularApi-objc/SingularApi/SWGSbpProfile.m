#import "SWGSbpProfile.h"

@implementation SWGSbpProfile

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"address": @"address", @"city": @"city", @"country": @"country", @"currency": @"currency", @"cvv": @"cvv", @"email": @"email", @"expirymmyy": @"expirymmyy", @"orderid": @"orderid", @"partnerid": @"partnerid", @"partnerkey": @"partnerkey", @"payeefirstname": @"payeefirstname", @"payeeid": @"payeeid", @"payeelastname": @"payeelastname", @"paymentmode": @"paymentmode", @"profileid": @"profileid", @"routingnumber": @"routingnumber", @"state": @"state", @"tokenizedaccountnumber": @"tokenizedaccountnumber", @"udfield1": @"udfield1", @"udfield2": @"udfield2", @"udfield3": @"udfield3", @"zip": @"zip" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"city", @"country", @"currency", @"cvv", @"email", @"expirymmyy", @"orderid", @"partnerid", @"partnerkey", @"payeefirstname", @"payeeid", @"payeelastname", @"paymentmode", @"profileid", @"routingnumber", @"state", @"tokenizedaccountnumber", @"udfield1", @"udfield2", @"udfield3", @"zip"];

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
