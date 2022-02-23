//
//  ViewController.swift
//  Table View (Dynamic)
//
//  Created by Dr.Mac on 21/02/22.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource{
    
    var info = [["name": "Mansi", "Address": "16/1 vijay nagar, Indore", "img": "Demo"], ["name": "Ayushi", "Address": "M.P", "img": "Demo"], ["name": "Aaksh", "Address": "  ", "img": "Demo"], ["name": "Pooja", "Address": "thoghtwin it solution, Vijay Nagar, Indore", "img": "Demo"], ["name": "Rahul", "Address": "Annapurna, Indore", "img": "Demo"], ["name": "Ameena", "Address": "  ", "img": "Demo"]]
    

    @IBOutlet weak var tbTableView: UITableView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return info.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        let data = info[indexPath.row]
        cell.lblName.text = data["name"]
        cell.lblAddress.text = data["Address"]
        cell.imgDemo.image = UIImage(named: data["img"]!)
        cell.imgDemo.layer.cornerRadius = cell.frame.size.height/2
        cell.imgDemo.clipsToBounds = true
        return cell
        
    }
    


}

