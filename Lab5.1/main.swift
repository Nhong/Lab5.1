//
//  main.swift
//  Lab5.1
//
//  Created by Kittinun Chobtham on 6/4/2563 BE.
//  Copyright © 2563 Kittinun Chobtham. All rights reserved.
//

import Foundation


class Person {
    let firstName: String
    let lastName: String
    
    init(firstName: String,
         lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
}

class Student {
    let firstName: String
    let lastName: String
    var grade: String?
    
    init(firstName: String,
                  lastName: String) {
        self.firstName = firstName
        self.lastName = lastName
    }
    
    func recordGrade(_ grade: String) {
        self.grade = grade
    }
    
}

class BandMember: Student {
    var minimumPracticeTime = 2
}

class OboePlayer: BandMember {
    override var minimumPracticeTime: Int {
        get {
            return super.minimumPracticeTime * 2
        }
        set {
            super.minimumPracticeTime = newValue / 2
        }
    }
}

var bandMember = BandMember(firstName: "john",
                             lastName: "watson")
var oboePlayer = OboePlayer(firstName: "Yut",
                            lastName: "watson")
var person = Person(firstName: "Tu",
                    lastName: "Yut")
var student = Student(firstName: "Nhong",
                      lastName: "watson")

let newStudent = oboePlayer as Student
print(newStudent.firstName)

if let bandMember = student as? BandMember {
    print(bandMember)
}

//print(oboePlayer.minimumPracticeTime)
//print(bandMember.minimumPracticeTime)
//
//oboePlayer.minimumPracticeTime = 8
//print(oboePlayer.minimumPracticeTime)

func phoneBookName(_ person: Person) -> String {
    return person.firstName + " " + person.lastName
}

print(phoneBookName(person))
//print(phoneBookName(bandMember))
//print(phoneBookName(oboePlayer))

//let student = Student(firstName: "john",
//                      lastName: "watson")
//student.recordGrade("A")
//print(student.firstName)
//
//if let grade = student.grade {
//    print(grade)
//}

class NewStudent: Student {
    var failedClasses: [String] = []
    
    override func recordGrade(_ grade: String) {
        super.recordGrade(grade)
        
        if grade == "F" {
            failedClasses.append(grade)
        }
    }
}

let test = NewStudent(firstName: "j",
                     lastName: "r")

test.recordGrade("F")

print(test.grade)

class StudentAthlete: Student {
    var sports: [String]
    
    init(firstName: String,
         lastName: String,
         sports: [String]) {
        self.sports = sports
        super.init(firstName: firstName,
                   lastName: lastName)
        recordGrade("A")
    }
    
}

let sportStudent = StudentAthlete(firstName: "kittinun",
                                  lastName: "chobtham",
                                  sports: ["Football"])
