//
//  ViewController.swift
//  Millas_a_metros
//
//  Created by Macabuku on 21/1/19.
//  Copyright © 2019 Macabuku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var distanceTextField: UITextField!
    
    @IBOutlet weak var segmentedOrigin: UISegmentedControl!
    
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    @IBOutlet weak var resultLabel: UILabel!
    
    var valueToConvert : Double = 0.0
    
    var kilometro = 1
    var millas = 0.621371   // 1 Km
    var yardas = 1093.61    // 1 Km
    
    var units = ["Millas","kilómetros","Yardas"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
      resultLabel.text = "Resultado"
    
        // valueToConvert = (distanceTextField.text! as NSString).floatValue
        
    }

    @IBAction func convertePressed(_ sender: UIButton) {
        
        checkOption()
        
    }
    
    @IBAction func changesegmentedOrigin(_ sender: UISegmentedControl) {
        
        checkOption()
        
    }
    
    
    @IBAction func changeSegmented(_ sender: UISegmentedControl ) {
        
        checkOption()

    }
    
    
    func checkOption(){
        
        if Double(distanceTextField.text!) != nil {
        let value = Double(distanceTextField.text!)!
        var conversion = ""
        let selectedIndex = (segmentedOrigin.selectedSegmentIndex, segmentedControl.selectedSegmentIndex)
            
            switch selectedIndex {
            case (0,1):
                conversion = String(format: "%.2f", (value *  1.60934))
                
            case (0,2):
                conversion = String(format: "%.2f", (value *  1760))
                
            case (1,0):
                conversion = String(format: "%.2f", (value /  1.60934))
                
            case (1,2):
                conversion = String(format: "%.2f", (value *  1093.61))
            case (2,0):
                conversion = String(format: "%.5f", (value /  1760))
            case (2,1):
                conversion = String(format: "%.5f", (value /  1093.61))
            default:
                conversion = String(format: "%.2f", (value))
            }
            
             resultLabel.text = "\(value) \(self.units[segmentedOrigin.selectedSegmentIndex]) son \(conversion) \(self.units[segmentedControl.selectedSegmentIndex])"
            
        } else {resultLabel.text = "Introduce una cantidad correcta"}
        
    }

}

