import UIKit

class HeroesTableViewController: UITableViewController {
    
    var superHeroes: [Heroes] = []
    
    func loadHeroes(){
        
        let fileURL = Bundle.main.url(forResource: "Hero.json", withExtension: nil)!
        let jsonData = try! Data(contentsOf: fileURL)
        
        do {
            superHeroes = try JSONDecoder().decode([Heroes].self, from: jsonData)
        }catch{
            print(error.localizedDescription)
        }
    }
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        loadHeroes()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return superHeroes.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cells", for:indexPath) as! HeroesTableViewCell
        let theSuperHeroes = superHeroes[indexPath.row]
        cell.createCell(with: theSuperHeroes)
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let vc = segue.destination as! DetailViewController
        let theHeroes = superHeroes[tableView.indexPathForSelectedRow!.row]
        vc.heroes = theHeroes
        
    }
}
