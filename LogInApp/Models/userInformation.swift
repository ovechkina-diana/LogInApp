//
//  userInformation.swift
//  LogInApp
//
//  Created by Диана Овечкина on 17.12.2021.
//

struct User {
    let login: String
    let password: String
    let person: Person
    
    static func getUserInformation() -> User {
        User(login: "User",
             password: "Password",
             person: Person.getPersonInformation())
    }
}

struct Person {
    let name: String
    let age: Int
    let info: String
    
    static func getPersonInformation() -> Person {
        Person(name: "Diana Ovechkina",
               age: 20,
               info: "I was born in little town Tomsk. Now I live in Moscow and study here. I'm in the 2nd year in Systems and Internet Programming.")
        }
}


