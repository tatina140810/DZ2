//
//  course.swift
//  lesson1225
//
//  Created by Tatina Dzhakypbekova on 19/1/24.
//

import Foundation
class Course {
    var title: String
    var students: [Student] = []
    
    init(title: String) {
        self.title = title
    }
    
    func registerStudents(student: Student) {
        students.append(student)
    }
    func showStudents() {
        for student in students{
            
            student.showInfo()
        }
        
    }
    func deleteStudent() {
        print("Введите индекс студента для удаления:")
        
        guard let userInput = readLine(),
              let index = Int(userInput),
              index >= 0, index < students.count else {
            print("Некорректный ввод. Удаление студента отменено.")
            return
        }

        let deletedStudent = students.remove(at: index)
        print("Студент \(deletedStudent.name) удален.")
    }
    
    func searchStudentByName () {
        print("Введите имя студента для поиска:")
        
        guard let userInput = readLine() else {
            print ("Ошибка ввода.")
            return
        }

        let searchName = userInput
        
        let matchingStudents = students.filter { $0.name.lowercased() == searchName.lowercased() }

            if matchingStudents.isEmpty {
                print("Студент с именем '\(searchName)' не найден.")
            } else {
                print("Найден(ы) студент(ы) с именем '\(searchName)':")
                for student in matchingStudents {
                    student.showInfo()
                }
            }
    }
    func filterByDirection() {
        print("Введите направление для поиска:")
        
        guard let userInput = readLine() else {
            print ("Ошибка ввода.")
            return
        }

        let serchDirection = userInput
        
        let matchingStudentsByDirection = students.filter { $0.direction.lowercased() == serchDirection.lowercased() }

            if matchingStudentsByDirection.isEmpty {
                print("Студент с направлением '\(serchDirection)' не найден.")
            } else {
                print("Найден(ы) студент(ы) с направлением '\(serchDirection)':")
                for student in matchingStudentsByDirection {
                    student.showInfo()
                }
            }
        
    }

}
