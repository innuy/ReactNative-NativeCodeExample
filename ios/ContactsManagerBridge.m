//  Created by Innuy on 7/25/17.

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(ContactsManager, NSObject)

RCT_EXTERN_METHOD(addContact:(NSString *)name familyName:(NSString *)familyName number:(NSString *)number)

@end

