//
//  Names.swift
//  PersonsList
//
//  Created by mac on 25.02.2022.
//

import Foundation


struct Person {
    
    var name: String
    var surname: String
    var email: String
    var phone: String
    
    static func getPersons() -> Person {
        
        let name = DataManager.shared.names.randomElement()
        let surname = DataManager.shared.surnames.randomElement()
        let email = DataManager.shared.emails.randomElement()
        let phone = DataManager.shared.phones.randomElement()
    
        let person = Person(name: name ?? "no", surname: surname ?? "no", email: email ?? "no", phone: phone ?? "no")
    
        
        return person
    
    }
    
}


    
   
    

