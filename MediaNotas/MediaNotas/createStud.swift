//
//  createStud.swift
//  MediaNotas
//
//  Created by Rafael Hartmann on 05/03/21.
//

import Foundation

class createStud{
    
    var viewClass : ViewController!
    var notaClass : NotasViewController!
    var student : Student!
    var notaFinal : Float = 0

    

    
    func create(){
        
        
        student = Student(nameOfStudent: viewClass.nameCreate(), schoolsYear: viewClass.yearCreate())
       
    }
    
    
    
}
