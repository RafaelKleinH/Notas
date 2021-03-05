//
//  Notas.swift
//  MediaNotas
//
//  Created by Rafael Hartmann on 04/03/21.
//

import Foundation

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
