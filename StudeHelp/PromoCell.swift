//
//  PromoCell.swift
//  StudeHelp
//
//  Created by L3NEC2021-7 on 05/01/2022.
//

import UIKit

class PromoCell: UITableViewCell {

    @IBOutlet weak var nom_ent: UILabel!
    @IBOutlet weak var adr_ent: UILabel!
    @IBOutlet weak var datefin_ent: UILabel!
    @IBOutlet weak var descr_promo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
