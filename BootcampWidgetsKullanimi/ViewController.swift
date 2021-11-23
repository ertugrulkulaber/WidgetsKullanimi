//
//  ViewController.swift
//  BootcampWidgetsKullanimi
//
//  Created by Ertuğrul Kulaber on 25.10.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var yuklemeBelirteci: UIActivityIndicatorView!
    @IBOutlet weak var steperDurum: UIStepper!
    @IBOutlet weak var labelsteppersonuc: UILabel!
    @IBOutlet weak var sliderkaydir: UISlider!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var imageViewYemek: UIImageView!
    @IBOutlet weak var segmentedControlYemek: UISegmentedControl!
    @IBOutlet weak var labelSonuc: UILabel!
    @IBOutlet weak var textFieldGirdi: UITextField!
    
    @IBOutlet weak var switchDurum: UISwitch!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        yuklemeBelirteci.isHidden = true
    }
    @IBAction func okuTikla(_ sender: Any) {
      /*  if let alinanVeri = textFieldGirdi.text {
        labelSonuc.text = alinanVeri
        }*/
        
        print("Swich Durum : \(switchDurum.isOn)")

        print("segmend Durum : \(segmentedControlYemek.selectedSegmentIndex)")
        print("segmented  Durum : \(Int(sliderkaydir.value))")
        print("stepperDurum  Durum : \(Int(steperDurum.value))")
            
    }
    
    @IBAction func switchKonumDegistir(_ sender: UISwitch) {
        if sender.isOn {
            imageViewYemek.image = UIImage( named: "baklava")
        }else {
            imageViewYemek.image = UIImage( named: "kofte")
            
        }
    }
    @IBAction func segmentedDegisimKontrol(_ sender: UISegmentedControl) {
        
        if sender.selectedSegmentIndex == 0 {
            imageViewYemek.image = UIImage( named: "sutlac")
            
        }
        if sender.selectedSegmentIndex == 1 {
            imageViewYemek.image = UIImage( named: "ayran")
            
        }
        if sender.selectedSegmentIndex == 2 {
            imageViewYemek.image = UIImage( named: "lazanya")
            
        }
        
    }
    
    @IBAction func slideraction(_ sender: UISlider) {
        label.text = "slider : \(Int(sender.value))"
    }
    
    
  
    @IBAction func stepper(_ sender: UIStepper) {
        labelsteppersonuc.text = "slider : \(Int(sender.value))"
        
}
    
    @IBAction func butonBasla(_ sender: Any) {
        yuklemeBelirteci.isHidden = false
        yuklemeBelirteci.startAnimating()
    }
    @IBAction func buttonDur(_ sender: Any) {
        yuklemeBelirteci.isHidden = true
        yuklemeBelirteci.stopAnimating()
    }
}


