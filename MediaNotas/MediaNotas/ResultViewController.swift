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
    var notaFinal: Float = 0
    var notasClass : NotasViewController!
    var creteStud : createStud!
        
    override func viewDidLoad() {
      mostraResultado()
     
    }
  
   
    func mostraResultado(){


        var texto = ""
     
        
        lbName.text = "Nome do Aluno: "
        lbYear.text = "Serie atual: "
        lbGrade.text = "Nota Final: "
        lbSituation.text = "Situação atual: \(texto)"
    }

}
