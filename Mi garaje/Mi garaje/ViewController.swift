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
    
    var myCar : Car!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        myCar = Car(cv: 124, marca: "Toyota", modelo: "Auris" , color: #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) , kms: 99000 , imageName: "ferrari")
        
        updateView()
        
    }


    func updateView(){
        if myCar.image != nil {
            self.imageView.image = myCar.image
        }
        
        self.label1.text = "\(myCar.marca!), \(myCar.modelo!)"
        self.label2.text = "\(myCar.cv!) cv"
        self.label3.text = "\(Int(myCar.kms!)) Kms"
        
        self.view.backgroundColor = myCar.color
        
        
    }
    
}

