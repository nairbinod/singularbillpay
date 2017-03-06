#import "SWGSbpRecurringRequest.h"

@implementation SWGSbpRecurringRequest

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
  return [[JSONKeyMapper alloc] initWithDictionary:@{ @"address": @"address", @"amountoutstanding": @"amountoutstanding", @"city": @"city", @"country": @"country", @"currency": @"currency", @"cvv": @"cvv", @"email": @"email", @"expirymmyy": @"expirymmyy", @"frequency": @"frequency", @"nextpaymentdate": @"nextpaymentdate", @"orderid": @"orderid", @"partnerid": @"partnerid", @"partnerkey": @"partnerkey", @"payeefirstname": @"payeefirstname", @"payeeid": @"payeeid", @"payeelastname": @"payeelastname", @"paymentenddate": @"paymentenddate", @"paymentmode": @"paymentmode", @"paymentstartdate": @"paymentstartdate", @"profileid": @"profileid", @"recurringamount": @"recurringamount", @"routingnumber": @"routingnumber", @"state": @"state", @"tokenizedaccountnumber": @"tokenizedaccountnumber", @"udfield1": @"udfield1", @"udfield2": @"udfield2", @"udfield3": @"udfield3", @"zip": @"zip" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName
{
  NSArray *optionalProperties = @[@"amountoutstanding", @"city", @"country", @"currency", @"cvv", @"email", @"expirymmyy", @"frequency", @"nextpaymentdate", @"orderid", @"partnerid", @"partnerkey", @"payeefirstname", @"payeeid", @"payeelastname", @"paymentenddate", @"paymentmode", @"paymentstartdate", @"profileid", @"recurringamount", @"routingnumber", @"state", @"tokenizedaccountnumber", @"udfield1", @"udfield2", @"udfield3", @"zip"];

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
