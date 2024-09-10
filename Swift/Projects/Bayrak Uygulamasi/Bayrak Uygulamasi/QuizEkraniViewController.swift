//
//  QuizEkraniViewController.swift
//  Bayrak Uygulamasi
//
//  Created by ayşe çetin on 9.09.2024.
//

import UIKit

class QuizEkraniViewController: UIViewController {

    @IBOutlet weak var labelDogru: UILabel!
    
    @IBOutlet weak var labelYanlis: UILabel!
    
    @IBOutlet weak var labelSoruSayisi: UILabel!
    
    @IBOutlet weak var imageViewBayrak: UIImageView!
    
    @IBOutlet weak var buttonA: UIButton!
    
    @IBOutlet weak var buttonB: UIButton!
    
    @IBOutlet weak var buttonC: UIButton!
    
    @IBOutlet weak var buttonD: UIButton!
    
    var sorular = [Bayraklar]()
    
    var yanlisSecenek = [Bayraklar]()
    
    var dogruSoru = Bayraklar()
    
    var soruSayac = 0
    var dogruSayac = 0
    var yanlisSayac = 0
    
    var secenekler = [Bayraklar]()
    var secenekKaristirmaListesi = Set <Bayraklar> ()
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        sorular = Bayraklardao().rastgele5BayrakGetir()
        
        soruYukle()
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let gidilecekVC = segue.destination as! SonucEkraniViewController
        gidilecekVC.dogruSayisi = dogruSayac
    }
    
    func  soruYukle(){
        labelSoruSayisi.text = "\(soruSayac + 1). SORU"
        labelDogru.text = "Doğru: \(dogruSayac)"
        labelYanlis.text = "Yanlış: \(yanlisSayac )"
        
        dogruSoru = sorular[soruSayac]
        
        imageViewBayrak.image = UIImage(named: dogruSoru.bayrak_resim!)
        
        yanlisSecenek = Bayraklardao().rastgele3YanlisSecenekGetir(bayrak_id: dogruSoru.bayrak_id!)
        
        secenekKaristirmaListesi.removeAll()
        
        secenekKaristirmaListesi.insert(dogruSoru)
        secenekKaristirmaListesi.insert(yanlisSecenek[0])
        secenekKaristirmaListesi.insert(yanlisSecenek[1])
        secenekKaristirmaListesi.insert(yanlisSecenek[2])

        secenekler.removeAll()
        
        for s in secenekKaristirmaListesi{
            secenekler.append(s)
        }
        
        buttonA.setTitle(secenekler[0].bayrak_ad, for: .normal)
        buttonB.setTitle(secenekler[1].bayrak_ad, for: .normal)
        buttonC.setTitle(secenekler[2].bayrak_ad, for: .normal)
        buttonD.setTitle(secenekler[3].bayrak_ad, for: .normal)

    
    }
    
    func dogruKontrol(button:UIButton){
        let buttonYazi = button.titleLabel?.text
        let dogruCevap = dogruSoru.bayrak_ad
        
        print("Button Yazi: \(buttonYazi!)")
        print("Doğru Cevap: \(dogruCevap!)")
        
        if dogruCevap == buttonYazi{
            dogruSayac += 1
        }else{
            yanlisSayac += 1
        }
        
        labelDogru.text = "Doğru: \(dogruSayac)"
        labelYanlis.text = "Yanlış: \(yanlisSayac)"
        
    }

    func soruSayacKontrol(){
        soruSayac += 1
        
        if soruSayac != 5{
            soruYukle()
        }else{
            performSegue(withIdentifier: "toSonucEkrani", sender: nil)
        }
            
    }
    
    
    @IBAction func buttonAtikla(_ sender: Any) {
        dogruKontrol(button: buttonA)
        soruSayacKontrol()
    }
    
    
    @IBAction func buttonBtikla(_ sender: Any) {
        dogruKontrol(button: buttonB)
        soruSayacKontrol()
    }
    
    @IBAction func buttonCtikla(_ sender: Any) {
        dogruKontrol(button: buttonC)
        soruSayacKontrol()
    }
    
    @IBAction func buttonDtikla(_ sender: Any) {
        dogruKontrol(button: buttonD)
        soruSayacKontrol()
    }
    
    
   
        
    

}
