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
    
    @IBOutlet weak var notaA: UITextField!
    @IBOutlet weak var notaB: UITextField!
    @IBOutlet weak var notaC: UITextField!
    @IBOutlet weak var btResulyt: UIButton!
    @IBOutlet weak var imgResult: UIImageView!
    
    var notaFinal: Float = 0
    
    @IBAction func calculaNotas(_ sender: Any) {
        
        if let notaA = Float(notaA.text!), let notaB = Float(notaB.text!),
           let notaC = Float(notaC.text!){
            
            if(notaA >= 0 && notaA <= 10 && notaB >= 0 && notaB <= 10 && notaC >= 0 && notaC <= 10) {
                
                notaFinal = (notaA + notaB + notaC) / 3
                
                mostraResultado()
            }
            
            else {
                
                let texto = "Nota tem que ser entre 0 e 10."
                let image = "caution"
                btResulyt.setTitle("\(texto)", for: .normal)
                imgResult.image = UIImage(named: image);
                
            }
        }
    }
    
    func mostraResultado(){
        var texto = ""
        var image = ""
        
        switch notaFinal {
        case  0...5:
            texto = "Reprovado"
            image = "reeprovado"
            
        case 5.01...7:
            texto = "Recuperação"
            image = "caution"
            
        default:
            texto = "Aprovado"
            image = "aaprovado"
            
        }
        
        btResulyt.setTitle("\(notaFinal) \nSituação atual: \(texto)", for: .normal)
        imgResult.image = UIImage(named: image);
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
}

