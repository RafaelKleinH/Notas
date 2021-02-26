//
//  ViewController.swift
//  MediaNotas
//
//  Created by Rafael Hartmann on 26/02/21.
//

import UIKit

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
            
            notaFinal = (notaA + notaB + notaC) / 3
            
            mostraResultado()
        }
        
    }
    
    func mostraResultado(){
        var texto = ""
        var image = ""
        
        switch notaFinal {
        case  0...5:
            texto = "Reprovado"
            image = "reprovado"
            
        case 5.1...7:
            texto = "Recuperaçã"
            image = "recuperacao"
        default:
            texto = "Aprovado"
            image = "aprovado"
        }
        
        btResulyt.setTitle("\(notaFinal) Situaçã atual: \(texto)", for: .normal)
        imgResult.image = UIImage(named: image);
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

