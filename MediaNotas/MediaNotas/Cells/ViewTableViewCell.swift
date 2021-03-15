//
//  ViewTableViewCell.swift
//  MediaNotas
//
//  Created by Rafael Hartmann on 12/03/21.
//

import UIKit

class ViewTableViewCell: UITableViewCell {
    
    @IBOutlet weak var ivImage: UIImageView!
    @IBOutlet weak var lbLabel: UILabel!
    
    
    func createCells(with appear: Apears){
        
        let nameImage = appear.nameAppear.replacingOccurrences(of: " ", with: "")
        lbLabel.text = appear.nameAppear
        ivImage.image = UIImage(named: "\(nameImage).jpeg")
        
    }
}
