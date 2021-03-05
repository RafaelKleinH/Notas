//
//  NotasViewController.swift
//  MediaNotas
//
//  Created by Rafael Hartmann on 04/03/21.
//

import UIKit

class NotasViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        
    }
    
    
    
    
    
    
    
    @IBOutlet weak var gradeA: UITextField!
    @IBOutlet weak var gradeB: UITextField!
    @IBOutlet weak var gradeC: UITextField!
    var student = Student(nameOfStudent: "", schoolsYear: 4, gradeArray: [])
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let rvc = segue.destination as! ResultViewController
        
        rvc.student = student
        
        
    }
    
    
    
    func gradeCalc(){
        
        var notaFinal: Float = 0
        if let gradesA = Float(gradeA.text!), let gradesB = Float(gradeB.text!), let gradesC = Float(gradeC.text!){
            
            if gradesA >= 0 && gradesA <= 10 && gradesB >= 0 && gradesB <= 10 && gradesC >= 0 && gradesC <= 10{
                
                
                notaFinal = (gradesA + gradesB + gradesC) / 3
                
                
                student.gradeStudent.removeAll()
                student.gradeStudent.append(gradesA)
                student.gradeStudent.append(gradesB)
                student.gradeStudent.append(gradesC)
                student.gradeStudent.append(notaFinal)
                
                print(student.nameStudent, student.schoolYear, student.gradeStudent)
                
            }
            
        }
        
    }
    
    
    
    @IBAction func btClicks(_ sender: Any) {
        gradeCalc()
        performSegue(withIdentifier: "ResultViewSegue", sender: self)
    }
    
}
