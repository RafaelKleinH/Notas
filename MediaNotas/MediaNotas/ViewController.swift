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
   
    var nameStudant = "2"
    var yearStudant = 6

    func nameCreate() -> String{
    
        if let studentName = tfName.text{
      
            nameStudant = studentName
       
              }
        return nameStudant
    }
    func yearCreate() -> Int {
        if let studentYear = Int(tfYear.text!){
        
        yearStudant = studentYear
    }
    return yearStudant
    }
}
            
     
            
            
        
        
        
        
        
    
    
    


