//
//  TableViewCell.swift
//  Table View (Dynamic)
//
//  Created by Dr.Mac on 21/02/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var imgDemo: UIImageView!
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAddress: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
      
        
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

}
