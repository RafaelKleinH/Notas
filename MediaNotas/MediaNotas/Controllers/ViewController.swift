//
//  ViewController.swift
//  MediaNotas
//
//  Created by Rafael Hartmann on 12/03/21.
//

import UIKit

class ViewController: UIViewController {

    var heroes: Heroes!
    
    @IBOutlet weak var ivHero: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbRealName: UILabel!
    @IBOutlet weak var lbPower: UILabel!
    @IBOutlet weak var lbTeam: UILabel!
    @IBOutlet weak var tvDescription: UITextView!
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        oneLoadView()
        // Do any additional setup after loading the view.
    }
    
    func oneLoadView(){
        
        let nweString = heroes.name.replacingOccurrences(of: " ", with: "")
        ivHero.image = (UIImage(named: "\(nweString).jpeg"))
        lbName.text = "Nome: \(heroes.name)"
        lbRealName.text = "Alter-Ego: \(heroes.realName)"
        lbPower.text = "Poder: \(heroes.powers)"
        lbTeam.text = "Grupo: \(heroes.team)"
        tvDescription.text = heroes.description
        
        
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
