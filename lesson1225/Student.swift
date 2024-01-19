//
//  Student.swift
//  lesson1225
//
//  Created by Tatina Dzhakypbekova on 19/1/24.
//

import Foundation

class Student {
    var name: String
    var age: Int
    var country = "Kyrgyzstan"
    var sername: String
    var lastname: String
    var direction: String
 
    
    init(name: String, age: Int, country: String = "Kyrgyzstan", sername: String, lastname: String, direction: String) {
        self.name = name
        self.age = age
        self.country = country
        self.sername = sername
        self.lastname = lastname
        self.direction = direction
    }
    
    func showInfo() {
        print ("Имя: \(name),фамилия \(sername), отчество \(lastname), возсраст: \(age), нправление \(direction) страна \(country)")
    }
   

}
