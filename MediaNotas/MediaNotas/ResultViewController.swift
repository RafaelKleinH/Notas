//
//  ResultViewController.swift
//  MediaNotas
//
//  Created by Rafael Hartmann on 04/03/21.
//

import UIKit

class ResultViewController: UIViewController{
    
    
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbYear: UILabel!
    @IBOutlet weak var lbGrade: UILabel!
    @IBOutlet weak var lbSituation: UILabel!
    
    var texto: String = "Sendo analizado"
    var student = Student(nameOfStudent: "", schoolsYear: 0, gradeArray: [])
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        situationStudent()
        
        lbName.text = "Nome do Aluno: \(student.nameStudent)"
        lbYear.text = "Serie atual: \(student.schoolYear)"
        lbGrade.text = "Nota Final: \(String(format: "%.2f",student.gradeStudent[3]))"
        
        lbSituation.text = "Situação atual: \(texto)"
    }
    
    
    @IBOutlet weak var lbZero: UILabel!
    func situationStudent(){
        
        switch student.gradeStudent[3] {
        case 0:
               texto = "Reprovado."
            lbZero.isHidden = false
        case 0.1..<5:
                texto = "Reprovado."
                
        case 5.001...7:
                texto = "Em exame."
            
            default:
                texto = "Aprovado."
                
        }
}
    
    
}











