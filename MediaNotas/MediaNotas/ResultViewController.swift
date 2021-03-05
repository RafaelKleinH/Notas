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

    var notasClass : NotasViewController!
    var viewClass : ViewController!
    var studA: Student!
    
    func funcName(){
        if let nome = viewClass.nameStudant, let ano = viewClass.yearStudant, let notaFinal = notasClass.finalResult{
            
            
            studA = Student(nameOfStudent: viewClass.nameStudant, schoolsYear: viewClass.yearStudant)
            lbName.text = "Nome do Aluno: \(nome)"
            lbYear.text = "Serie atual: \(ano)"
            lbGrade.text = "Nota Final: \(notaFinal)"
            lbSituation.text = "Situação atual: "
        }
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
            
        funcName()
            
        }
     
     
    }
  
   
   
    

    
    

