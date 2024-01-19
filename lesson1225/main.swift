//
//  main.swift
//  lesson1225
//
//  Created by Tatina Dzhakypbekova on 19/1/24.
//

import Foundation

var student1 = Student(name: "Nurlan", age: 29, sername: "Saburov", lastname: "Alibekovich", direction: "IOS")

var student2 = Student(name: "Angela", age: 38, sername: "Yu", lastname: "Albertovna", direction: "Python")
var student3 = Student(name: "Ilon", age: 52, sername: "Mask", lastname: "Teslovich", direction: "IOS")


student1.showInfo()
student2.showInfo()
student3.showInfo()

var course1 = Course(title: "Geeks")

course1.registerStudents(student: student1)
course1.registerStudents(student: student2)
course1.registerStudents(student: student3)
course1.showStudents()
course1.deleteStudent()
course1.showStudents()
course1.searchStudentByName()

course1.filterByDirection()
