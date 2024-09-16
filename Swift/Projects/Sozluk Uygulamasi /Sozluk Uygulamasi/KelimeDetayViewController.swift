//
//  KelimeDetayViewController.swift
//  Sozluk Uygulamasi
//
//  Created by ayşe çetin on 14.09.2024.
//

import UIKit

class KelimeDetayViewController: UIViewController {

    @IBOutlet weak var ingilizceLabel: UILabel!
   
    @IBOutlet weak var turkceLabel: UILabel!
    
    var kelime:Kelimeler?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let k = kelime{
            ingilizceLabel.text = k.ingilizce
            turkceLabel.text = k.turkce
        }
        
    }
    
 

}
