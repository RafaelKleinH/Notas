//
//  HeroesTableViewCell.swift
//  MediaNotas
//
//  Created by Rafael Hartmann on 11/03/21.
//

import UIKit

class HeroesTableViewCell: UITableViewCell {

    
    @IBOutlet weak var ivHeroe: UIImageView!
    @IBOutlet weak var lbHero: UILabel!
    @IBOutlet weak var lbPower: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func createCell(with hero: Heroes){
        
        let nweString = hero.name.replacingOccurrences(of: " ", with: "")
        ivHeroe.image = (UIImage(named: "\(nweString).jpeg"))
        lbHero.text = "Nome: \(hero.name)"
        lbPower.text = "Poder: \(hero.powers)"
        print(hero)
    }
}
