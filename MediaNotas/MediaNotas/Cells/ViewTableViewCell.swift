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
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func createCells(with appear: Apears){
        
        let nameImage = appear.nameAppear.replacingOccurrences(of: " ", with: "")
        print(nameImage)
        lbLabel.text = appear.nameAppear
        ivImage.image = UIImage(named: "\(nameImage).jpeg")
        
    }
}
