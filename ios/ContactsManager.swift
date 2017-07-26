//  Created by Innuy on 7/25/17.

import Foundation
import Contacts

@objc(ContactsManager)
class ContactsManager: NSObject {
  
  @objc(addContact:familyName:number:)
  func addContact(name: NSString, familyName: NSString, number: NSString) -> Void {
    
    if #available(iOS 9.0, *) {
      let contact = CNMutableContact()
      
      contact.givenName = name as String
      contact.familyName = familyName as String
      
      contact.phoneNumbers = [CNLabeledValue(
        label:CNLabelPhoneNumberiPhone,
        value:CNPhoneNumber(stringValue:number as String))]
      
      let store = CNContactStore()
      let saveRequest = CNSaveRequest()
      saveRequest.add(contact, toContainerWithIdentifier:nil)
      try! store.execute(saveRequest)
      
    }
  }
}
