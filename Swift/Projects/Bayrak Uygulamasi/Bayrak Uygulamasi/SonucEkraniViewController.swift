//
//  SonucEkraniViewController.swift
//  Bayrak Uygulamasi
//
//  Created by ayşe çetin on 9.09.2024.
//

import UIKit

class SonucEkraniViewController: UIViewController {

    
    @IBOutlet weak var labelSonuc: UILabel!
    
    @IBOutlet weak var labelYuzde: UILabel!
    
    var dogruSayisi:Int?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem .hidesBackButton = true
        
        if let d = dogruSayisi{
            labelSonuc.text = "\(d) DOĞRU - \(5-d) YANLIŞ"
            labelYuzde.text = "%\(d*100/5) BAŞARI"
        }

    }
    

    @IBAction func tekrarDene(_ sender: Any) {
        navigationController?.popToRootViewController(animated: true)
    }
    
}
