//
//  Student.swift
//  MediaNotas
//
//  Created by Rafael Hartmann on 04/03/21.
//

import Foundation

class Student{
    var nameStudent :String
    var schoolYear : Int
    var gradeStudent : [Float] = [0,0,0,0]
    
    
    init(nameOfStudent: String, schoolsYear: Int, gradeArray: [Float]) {
        
        self.nameStudent = nameOfStudent
        self.schoolYear = schoolsYear
        self.gradeStudent = gradeArray
    
    }
    
    
    
    
}
