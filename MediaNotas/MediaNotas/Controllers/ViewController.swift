//
//  ViewController.swift
//  MediaNotas
//
//  Created by Rafael Hartmann on 12/03/21.
//

import UIKit

class ViewController: UIViewController{
    
    var heroes: Heroes!
    
    @IBOutlet weak var ivHero: UIImageView!
    @IBOutlet weak var lbName: UILabel!
    @IBOutlet weak var lbRealName: UILabel!
    @IBOutlet weak var lbPower: UILabel!
    @IBOutlet weak var lbTeam: UILabel!
    @IBOutlet weak var tvDescription: UITextView!
    

    
    
    
    @IBOutlet weak var tableView: UITableView!
    var imageArray: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        oneLoadView()
        // Do any additional setup after loading the view.
    }
    
    func oneLoadView(){
        
        let nweString = heroes.name.replacingOccurrences(of: " ", with: "")
        
        title = "Infos sobre: \(heroes.name) "
        ivHero.image = (UIImage(named: "\(nweString).jpeg"))
        lbName.text = "Nome: \(heroes.name)"
        lbRealName.text = "Alter-Ego: \(heroes.realName)"
        lbPower.text = "Poder: \(heroes.powers)"
        lbTeam.text = "Grupo: \(heroes.team)"
        tvDescription.text = heroes.description
        
    
        
        //let nameOfApperString = heroes
           // .replacingOccurrences(of: " ", with: "")
        for hero in heroes.appearances {
            let nameOFAppearString = hero.nameAppear.replacingOccurrences(of: " ", with: "")
           
            imageArray.append(nameOFAppearString)
            print(imageArray)
        }
      
     
    }
    
    
   
    
}
extension ViewController : UITableViewDataSource{
    
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return heroes.appearances.count
    }
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViewTableViewCell
        
        let appear = heroes.appearances[indexPath.row]
        cell.createCells(with: appear)

        return cell
        
    }
}

extension ViewController : UITableViewDelegate{
    
    

    
}

