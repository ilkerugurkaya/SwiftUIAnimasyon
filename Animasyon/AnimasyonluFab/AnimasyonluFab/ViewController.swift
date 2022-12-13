//
//  ViewController.swift
//  AnimasyonluFab
//
//  Created by İlker Kaya on 7.12.2022.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var fabMain: UIButton!
    @IBOutlet weak var fabBirinci: UIButton!
    @IBOutlet weak var fabIkinci: UIButton!
    
    var fabDurum = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Buttonaların oval yapılması
        
        fabMain.layer.cornerRadius = fabMain.frame.size.width/2
        fabBirinci.layer.cornerRadius = fabBirinci.frame.size.width/2
        fabIkinci.layer.cornerRadius = fabIkinci.frame.size.width/2
        
        self.fabBirinci.alpha = 0
        self.fabIkinci.alpha = 0
        self.fabBirinci.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        self.fabIkinci.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
        
    }

    @IBAction func fabMainTikla(_ sender: Any) {
        print("Fab main tıklandı")
        
        UIView.animate(withDuration: 0.5, animations: {
            
            if self.fabDurum {
                
                self.fabBirinci.alpha = 0
                self.fabIkinci.alpha = 0
                
                self.fabMain.transform = CGAffineTransform(rotationAngle: 0 * .pi/180)
                
                self.fabBirinci.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                self.fabIkinci.transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
                
                self.fabDurum = false
                
            }else{
                
                self.fabBirinci.alpha = 1
                self.fabIkinci.alpha = 1
                
                self.fabMain.transform = CGAffineTransform(rotationAngle: 45 * .pi/180)
                
                self.fabBirinci.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                self.fabIkinci.transform = CGAffineTransform(scaleX: 1.0, y: 1.0)
                
                self.fabDurum = true
            }
            
        }, completion: nil)
        
    }
    
    @IBAction func fabBirinciTikla(_ sender: Any) {
        print("Fab birinci tıklandı")
    }
    @IBAction func fabIkinciTikla(_ sender: Any) {
        print("Fab ikinci tıklandı")
    }
}


