//
//  ContactsManagerBridge.m
//  ContactsProject
//
//  Created by Ignacio Duran on 7/25/17.
//  Copyright © 2017 Facebook. All rights reserved.
//

#import <React/RCTBridgeModule.h>

@interface RCT_EXTERN_MODULE(ContactsManager, NSObject)

RCT_EXTERN_METHOD(addContact:(NSString *)name familyName:(NSString *)familyName number:(NSString *)number)

@end

