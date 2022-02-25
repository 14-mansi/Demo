//
//  MyViewController.swift
//  Table View (Dynamic)
//
//  Created by Dr.Mac on 24/02/22.
//

import UIKit

class MyViewController: UIViewController,UITableViewDataSource,UITableViewDelegate {
   
    let details = [["name": "Mansi", "Address": "Vijay Nagar,Indore", "img": "Profile"],["name": "Ayushi", "Address": "Indore,madhya pradesh","img": "Profile"],["name": "Ameena", "Address": "sdcncdhshjhcbiuhcbbsvudhvfdjhb", "img": "Profile"], ["name": "Pooja", "Address": "jdiufeiufijfhfufywe8yuwfhhfggfwiufyiufhwuifhgfgffgsdfgshjhj ", "img": "Profile"], ["name": "Rahul", "Address": "jdhudhhfheirfuhdfjhjfhskjfjser8iefj", "img": "Profile"], ["name": "Sahil", "Address": "kdkdkdkuhydgd", "img": "Profile"],["name": "Mohan", "Address": "hdcjdhfuhuhgfhrufoiewopednscidjopfndcnnbvudbvihcv", "img": "Profile"]]
    
    @IBOutlet weak var myTable: UITableView!
   
    override func viewDidLoad() {
        super.viewDidLoad()
                myTable.register(UINib(nibName: "MyTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return details.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTable.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        let data = details[indexPath.row]
        cell.myLbl1.text = data["name"]
        cell.myLbl2.text = data["Address"]
        cell.myImage.image = UIImage(named: data["img"]!)
        //cell.myImage.layer.cornerRadius = cell.frame.size.height/2
       // cell.clipsToBounds = true
        return cell
        
    }
}
