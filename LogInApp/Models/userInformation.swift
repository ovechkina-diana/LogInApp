//
//  userInformation.swift
//  LogInApp
//
//  Created by Диана Овечкина on 17.12.2021.
//

struct User {
    let login = "User"
    let password  = "Password"
    
    static func getPersonInformation() -> Person {
        Person(name: "Diana Ovechkina",
               age: 20,
               info: "I was born in little town Tomsk. Now I live in Moscow and study here. I'm in the 2nd year in Systems and Internet Programming.")
        }
}

struct Person {
    let name: String
    let age: Int
    let info: String
}


