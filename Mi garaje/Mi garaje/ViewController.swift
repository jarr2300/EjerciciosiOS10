//
//  ViewController.swift
//  Mi garaje
//
//  Created by Macabuku on 29/1/19.
//  Copyright © 2019 Macabuku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    
    var garaje : [Car] = []
    var myCar : Car!
    var position = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myCar = Car(cv: 124, marca: "Toyota", modelo: "Auris" , color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) , kms: 99000 , image: nil)
        garaje.append(myCar)
        garaje.append(Car(cv: 525, marca: "Ferrari", modelo: "Italia" , color: #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1) , kms: 3456 , image: #imageLiteral(resourceName: "ferrari.jpg")))
        garaje.append(Car(cv: 120, marca: "Citröen", modelo: "Jumpy" , color: #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1) , kms: 76432 , image: #imageLiteral(resourceName: "citroen.jpg")))
        garaje.append(Car(cv: 150, marca: "Fiat", modelo: "Descapotable" , color: #colorLiteral(red: 0.9411764741, green: 0.4980392158, blue: 0.3529411852, alpha: 1) , kms: 65123 , image: #imageLiteral(resourceName: "fiat.jpg") ))
        updateView(0)

    }


    @IBAction func changeCar(_ sender: UIButton) {
        // let numberOfCars = self.garaje.count - 1
        // let n = self.position
        if self.position == self.garaje.count {
            self.position = 0
            print(garaje[self.position])
            updateView(self.position)
            
            
        } else {
            updateView(self.position)
            
            
        }
        
        
    }
    
    
    func updateView(_ car: Int){
        
        UIView.animate(withDuration: 0.5, delay: 0.25, options: [.transitionFlipFromRight , .allowUserInteraction], animations: {
            
            
            self.label1.text = "\(self.garaje[car].marca!), \(self.garaje[car].modelo!)"
            self.label2.text = "\(self.garaje[car].cv!) cv"
            self.label3.text = "\(Int(self.garaje[car].kms!)) Kms"
            
            self.view.backgroundColor = self.garaje[car].color
            
            if self.garaje[car].image == nil {
                self.imageView.image = #imageLiteral(resourceName: "disponible.png")
            } else {
                self.imageView.image = self.garaje[car].image
            }
            
            self.position += 1
            
        })
        
        
        
    
    }
    
}

