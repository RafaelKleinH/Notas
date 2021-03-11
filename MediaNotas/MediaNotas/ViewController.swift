//
//  ViewController.swift
//  MediaNotas
//
//  Created by Rafael Hartmann on 26/02/21.
//

import UIKit

/*extension UIButton{
 
 func  allowTextToScale(minFontScale : CGFloat = 0.5, numberOfLines : Int = 4){
 
 self.titleLabel?.adjustsFontSizeToFitWidth = true
 self.titleLabel?.minimumScaleFactor = minFontScale
 self.titleLabel?.lineBreakMode = .byTruncatingTail
 self.titleLabel?.numberOfLines = numberOfLines
 
 }
 
 }*/

class ViewController: UIViewController {
    
    @IBOutlet weak var tfName: UITextField!
    @IBOutlet weak var tfYear: UITextField!
    
    var studant = Student(nameOfStudent: "", schoolsYear: 0, gradeArray: [])
    
    @IBAction func btClick(_ sender: Any) {
        passInfo()
        performSegue(withIdentifier: "firstSegue", sender: self)
        
        
    }
    
    func passInfo(){
        if let name = tfName.text, let year = Int(tfYear.text!){
            
            studant.nameStudent = name
            studant.schoolYear = year
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! NotasViewController
        
        vc.student = studant
        
        
    }
}














