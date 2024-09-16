//
//  ViewController.swift
//  Sozluk Uygulamasi
//
//  Created by ayşe çetin on 14.09.2024.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var kelimeTableView: UITableView!
    
    var kelimeListesi = [Kelimeler]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        veritabaniKopyala()

        kelimeListesi = Kelimelerdao().tumKelimeleriAl()
        
        kelimeTableView.dataSource = self
        kelimeTableView.delegate = self
        
        searchBar.delegate = self

    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        let indeks = sender as? Int
        
        let gidilecekVC = segue.destination as! KelimeDetayViewController
        
        gidilecekVC.kelime = kelimeListesi[indeks!]
        
    }
    
    func veritabaniKopyala(){
        
        // dosyanın nerede olduğunu belirttik.
        let bundleYolu =  Bundle.main.path(forResource: "sozluk", ofType: ".sqlite")
        
        //hedef yolumuzu belirttik.
        let hedefYol = NSSearchPathForDirectoriesInDomains(.documentDirectory , .userDomainMask, true).first!
        
        //kopyalama işlemini bu yapacak
        let fileManager = FileManager.default
        
        // kopyalanacak yeri tam anlamıyla belirttik.
        let kopyalanacakYer = URL(fileURLWithPath: hedefYol).appendingPathComponent("sozluk.sqlite")
        
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

extension ViewController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return kelimeListesi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let kelime = kelimeListesi[indexPath.row]
         
        let cell = tableView.dequeueReusableCell(withIdentifier: "kelimeHucre", for: indexPath) as! KelimeTableViewCell
        cell.ingilizcelabel.text = kelime.ingilizce
        cell.turkcelabel.text = kelime.turkce
        
        return cell
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        self.performSegue(withIdentifier: "toKelimeDetay", sender: indexPath.row)
    }
}

extension ViewController: UISearchBarDelegate{
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Arama sonucu: \(searchText)")
        
        kelimeListesi = Kelimelerdao().aramaYap(ingilizce: searchText)
        
        kelimeTableView.reloadData()
    }
}
