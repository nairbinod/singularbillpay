#import "SWGVApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGSbpQueryRequest.h"
#import "SWGSbpProfile.h"
#import "SWGSbpRecurringRequest.h"
#import "SWGSbpResponse.h"
#import "SWGSbpRequest.h"


@interface SWGVApi ()
    @property (readwrite, nonatomic, strong) NSMutableDictionary *defaultHeaders;
@end

@implementation SWGVApi

static SWGVApi* singletonAPI = nil;

#pragma mark - Initialize methods

- (id) init {
    self = [super init];
    if (self) {
        SWGConfiguration *config = [SWGConfiguration sharedConfig];
        if (config.apiClient == nil) {
            config.apiClient = [[SWGApiClient alloc] init];
        }
        self.apiClient = config.apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

- (id) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        self.apiClient = apiClient;
        self.defaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

+(SWGVApi*) apiWithHeader:(NSString*)headerValue key:(NSString*)key {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGVApi alloc] init];
        [singletonAPI addHeader:headerValue forKey:key];
    }
    return singletonAPI;
}

+(SWGVApi*) sharedAPI {

    if (singletonAPI == nil) {
        singletonAPI = [[SWGVApi alloc] init];
    }
    return singletonAPI;
}

-(void) addHeader:(NSString*)value forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(void) setHeaderValue:(NSString*) value
           forKey:(NSString*)key {
    [self.defaultHeaders setValue:value forKey:key];
}

-(unsigned long) requestQueueSize {
    return [SWGApiClient requestQueueSize];
}

#pragma mark - Api Methods

///
/// 
/// Please provide a description for the endpoint
///  @param sbpQueryRequest SbpQueryRequest
///
///  @returns NSArray<SWGSbpQueryRequest>*
///
-(NSNumber*) getReportWithCompletionBlock: (SWGSbpQueryRequest*) sbpQueryRequest
        
        completionHandler: (void (^)(NSArray<SWGSbpQueryRequest>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpQueryRequest' is set
    if (sbpQueryRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpQueryRequest` when calling `getReport`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/Reports"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpQueryRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGSbpQueryRequest>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGSbpQueryRequest>*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpProfile SbpProfile
///
///  @returns SWGSbpProfile*
///
-(NSNumber*) createProfileWithCompletionBlock: (SWGSbpProfile*) sbpProfile
        
        completionHandler: (void (^)(SWGSbpProfile* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpProfile' is set
    if (sbpProfile == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpProfile` when calling `createProfile`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/profile/create"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpProfile;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGSbpProfile*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGSbpProfile*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpProfile SbpProfile
///
///  @returns SWGSbpProfile*
///
-(NSNumber*) deleteProfileWithCompletionBlock: (SWGSbpProfile*) sbpProfile
        
        completionHandler: (void (^)(SWGSbpProfile* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpProfile' is set
    if (sbpProfile == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpProfile` when calling `deleteProfile`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/profile/delete"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpProfile;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGSbpProfile*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGSbpProfile*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpQueryRequest SbpQueryRequest
///
///  @returns NSArray<SWGSbpProfile>*
///
-(NSNumber*) queryProfileWithCompletionBlock: (SWGSbpQueryRequest*) sbpQueryRequest
        
        completionHandler: (void (^)(NSArray<SWGSbpProfile>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpQueryRequest' is set
    if (sbpQueryRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpQueryRequest` when calling `queryProfile`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/profile/query"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpQueryRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGSbpProfile>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGSbpProfile>*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpRecurringRequest SbpRecurringRequest
///
///  @returns SWGSbpRecurringRequest*
///
-(NSNumber*) cancelRecurringWithCompletionBlock: (SWGSbpRecurringRequest*) sbpRecurringRequest
        
        completionHandler: (void (^)(SWGSbpRecurringRequest* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpRecurringRequest' is set
    if (sbpRecurringRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpRecurringRequest` when calling `cancelRecurring`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/recurring/cancel"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpRecurringRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGSbpRecurringRequest*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGSbpRecurringRequest*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpRecurringRequest SbpRecurringRequest
///
///  @returns SWGSbpResponse*
///
-(NSNumber*) createRecurringWithCompletionBlock: (SWGSbpRecurringRequest*) sbpRecurringRequest
        
        completionHandler: (void (^)(SWGSbpResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpRecurringRequest' is set
    if (sbpRecurringRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpRecurringRequest` when calling `createRecurring`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/recurring/create"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpRecurringRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGSbpResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGSbpResponse*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpQueryRequest SbpQueryRequest
///
///  @returns NSArray<SWGSbpRecurringRequest>*
///
-(NSNumber*) queryRecurringWithCompletionBlock: (SWGSbpQueryRequest*) sbpQueryRequest
        
        completionHandler: (void (^)(NSArray<SWGSbpRecurringRequest>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpQueryRequest' is set
    if (sbpQueryRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpQueryRequest` when calling `queryRecurring`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/recurring/query"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpQueryRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGSbpRecurringRequest>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGSbpRecurringRequest>*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @returns SWGSbpResponse*
///
-(NSNumber*) getStatusWithCompletionBlock: 
        (void (^)(SWGSbpResponse* output, NSError* error))completionBlock { 
        

    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/transaction"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"GET"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGSbpResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGSbpResponse*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpRequest SbpRequest
///
///  @returns SWGSbpResponse*
///
-(NSNumber*) postTransactionWithCompletionBlock: (SWGSbpRequest*) sbpRequest
        
        completionHandler: (void (^)(SWGSbpResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpRequest' is set
    if (sbpRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpRequest` when calling `postTransaction`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/transaction"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGSbpResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGSbpResponse*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpRequest SbpRequest
///
///  @returns SWGSbpResponse*
///
-(NSNumber*) authorizeWithCompletionBlock: (SWGSbpRequest*) sbpRequest
        
        completionHandler: (void (^)(SWGSbpResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpRequest' is set
    if (sbpRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpRequest` when calling `authorize`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/transaction/auth"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGSbpResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGSbpResponse*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpRequest SbpRequest
///
///  @returns SWGSbpResponse*
///
-(NSNumber*) captureWithCompletionBlock: (SWGSbpRequest*) sbpRequest
        
        completionHandler: (void (^)(SWGSbpResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpRequest' is set
    if (sbpRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpRequest` when calling `capture`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/transaction/capture"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGSbpResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGSbpResponse*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpQueryRequest SbpQueryRequest
///
///  @returns NSArray<SWGSbpResponse>*
///
-(NSNumber*) queryTransactionWithCompletionBlock: (SWGSbpQueryRequest*) sbpQueryRequest
        
        completionHandler: (void (^)(NSArray<SWGSbpResponse>* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpQueryRequest' is set
    if (sbpQueryRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpQueryRequest` when calling `queryTransaction`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/transaction/query"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpQueryRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"NSArray<SWGSbpResponse>*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((NSArray<SWGSbpResponse>*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpRequest SbpRequest
///
///  @returns SWGSbpResponse*
///
-(NSNumber*) refundWithCompletionBlock: (SWGSbpRequest*) sbpRequest
        
        completionHandler: (void (^)(SWGSbpResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpRequest' is set
    if (sbpRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpRequest` when calling `refund`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/transaction/refund"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGSbpResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGSbpResponse*)data, error);
              }
          ];
}

///
/// 
/// Please provide a description for the endpoint
///  @param sbpRequest SbpRequest
///
///  @returns SWGSbpResponse*
///
-(NSNumber*) voidTransactionWithCompletionBlock: (SWGSbpRequest*) sbpRequest
        
        completionHandler: (void (^)(SWGSbpResponse* output, NSError* error))completionBlock { 
        

    
    // verify the required parameter 'sbpRequest' is set
    if (sbpRequest == nil) {
        [NSException raise:@"Invalid parameter" format:@"Missing the required parameter `sbpRequest` when calling `voidTransaction`"];
    }
    

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/v1/transaction/void"];

    // remove format in URL if needed
    if ([resourcePath rangeOfString:@".{format}"].location != NSNotFound) {
        [resourcePath replaceCharactersInRange: [resourcePath rangeOfString:@".{format}"] withString:@".json"];
    }

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.defaultHeaders];

    

    // HTTP header `Accept`
    headerParams[@"Accept"] = [SWGApiClient selectHeaderAccept:@[@"application/json", @"application/xml"]];
    if ([headerParams[@"Accept"] length] == 0) {
        [headerParams removeObjectForKey:@"Accept"];
    }

    // response content type
    NSString *responseContentType;
    if ([headerParams objectForKey:@"Accept"]) {
        responseContentType = [headerParams[@"Accept"] componentsSeparatedByString:@", "][0];
    }
    else {
        responseContentType = @"";
    }

    // request content type
    NSString *requestContentType = [SWGApiClient selectHeaderContentType:@[@"application/json", @"application/xml"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *files = [[NSMutableDictionary alloc] init];
    
    bodyParam = sbpRequest;
    

    
    return [self.apiClient requestWithCompletionBlock: resourcePath
                                               method: @"POST"
                                           pathParams: pathParams
                                          queryParams: queryParams
                                           formParams: formParams
                                                files: files
                                                 body: bodyParam
                                         headerParams: headerParams
                                         authSettings: authSettings
                                   requestContentType: requestContentType
                                  responseContentType: responseContentType
                                         responseType: @"SWGSbpResponse*"
                                      completionBlock: ^(id data, NSError *error) {
                  
                  completionBlock((SWGSbpResponse*)data, error);
              }
          ];
}



@end
