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
    var firstGrade: Float = 0
    var secondGrade: Float = 0
    var lastGrade: Float = 0
    var finalResult: Float = 0


    
        func gradeCalc(){
        
        var notaFinal:Float = 0
        if let gradesA = Float(gradeA.text!), let gradesB = Float(gradeB.text!), let gradesC = Float(gradeC.text!){
        
            if gradesA >= 0 && gradesA <= 10 && gradesB >= 0 && gradesB <= 10 && gradesC >= 0 && gradesC <= 10{
                
              
    
               notaFinal = gradesA + gradesB + gradesC / 3
                
                firstGrade = gradesA
                
                secondGrade = gradesB
                
                lastGrade = gradesC
                
                finalResult = notaFinal
               
            }
         
    }
          
    }
    
    
    
    @IBAction func btClicks(_ sender: Any) {
        gradeCalc()
    }
    
}
