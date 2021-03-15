import UIKit

class HeroesTableViewCell: UITableViewCell {

    @IBOutlet weak var ivHeroe: UIImageView!
    @IBOutlet weak var lbHero: UILabel!
    @IBOutlet weak var lbPower: UILabel!
    
    
    func createCell(with hero: Heroes){
        
        let nweString = hero.name.replacingOccurrences(of: " ", with: "")
        ivHeroe.image = (UIImage(named: "\(nweString).jpeg"))
        lbHero.text = "Nome: \(hero.name)"
        lbPower.text = "Poder: \(hero.powers)"
       
    }
}
