//
//  ViewController.swift
//  Bayrak Uygulamasi
//
//  Created by ayşe çetin on 9.09.2024.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        veritabaniKopyala()

    }

    
    func veritabaniKopyala(){
        
        // dosyanın nerede olduğunu belirttik.
        let bundleYolu =  Bundle.main.path(forResource: "bayrakquiz", ofType: ".sqlite")
        
        //hedef yolumuzu belirttik.
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory , .userDomainMask, true).first!
        
        //kopyalama işlemini bu yapacak
        let fileManager = FileManager.default
        
        // kopyalanacak yeri tam anlamıyla belirttik.
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("bayrakquiz.sqlite")
        
        if fileManager.fileExists(atPath: kopyalanacakYer.path){
            
            print("Veritabanı zaten var. Kopyalamya gerek yok.")
            
        }else{
            do{
                
                try fileManager.copyItem(atPath: bundleYolu!, toPath: kopyalanacakYer.path)
                
            }catch{
                print(error)
            }
        
        }
        
    }

    
    
}

 
