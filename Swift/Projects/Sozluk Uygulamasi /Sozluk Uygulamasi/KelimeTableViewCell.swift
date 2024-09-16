//
//  KelimeTableViewCell.swift
//  Sozluk Uygulamasi
//
//  Created by ayşe çetin on 14.09.2024.
//

import UIKit

class KelimeTableViewCell: UITableViewCell {

    @IBOutlet weak var ingilizcelabel: UILabel!
    
    @IBOutlet weak var turkcelabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
