//
//  PersonViewModel.swift
//  Environment Example
//
//  Created by Prinon bhowmik on 12/3/24.
//

import Foundation

@Observable 
class PersonViewModel {
    var firstName : String = "Prinon"
    var lastName : String = "Bhowmik"
    
    var getName: String {
        "\(firstName) \(lastName)"
    }
    
    func changeName() {
        let names : [(String,String)] = [("Prinon","Bhowmik"),("Prithul","Bhowmik"),("Pritom","Bhowmik"),("Piyal","Bhowmik"),("Rumon","Bhowmik"),("Sumon","Bhowmik")]
        
        let randomName: (String,String) = names.randomElement() ?? ("","")
        
        firstName = randomName.0
        lastName = randomName.1
    }
}
