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
    
    static func getPersons() -> [Person] {
        
        let name = DataManager.shared.names.shuffled()
        let surname = DataManager.shared.surnames.shuffled()
        let email = DataManager.shared.emails.shuffled()
        let phone = DataManager.shared.phones.shuffled()
    
        var persons: [Person] = []
        
        let indexCount = min(
            name.count,
            surname.count,
            email.count,
            phone.count
            )
        
        for index in 0..<indexCount {
            
            let person = Person(
                name: name[index],
                surname: surname[index],
                email: email[index],
                phone: phone[index]
            )
            
            persons.append(person)
        }
    
        
        return persons
    
    }
    
}





   
    

