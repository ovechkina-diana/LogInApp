//
//  userInformation.swift
//  LogInApp
//
//  Created by Диана Овечкина on 17.12.2021.
//

struct User {
    let login = "User"
    let password  = "Password"
    
//    init() {
//        self.login = login
//        self.password = password
//    }
    
    static func getPersonInformation() -> Person {
        Person(name: "Diana", age: 21)
        }
    
}

struct Person {
    let name: String
    let age: Int
}


