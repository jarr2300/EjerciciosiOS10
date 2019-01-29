//
//  ViewController.swift
//  UIAlertController
//
//  Created by Macabuku on 27/1/19.
//  Copyright © 2019 Macabuku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        OperationQueue.main.addOperation{
            self.hola("Este es el primero")
        }
        
    }
    
    
    
    @IBAction func accion(_ sender: UIButton) {
        hola("Cuidado")
    }
    
    
    
    func hola(_ saludo: String) {
        let alert = UIAlertController(title: "Hola", message: "Esto es un mensaje de bienvenida", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "\(saludo)", style: .destructive, handler: { (_) in
            print("User click Approve button")
        }))
        self.present(alert, animated: true, completion: {
            print("completion block")
        })
        /*

        
        alert.addAction(UIAlertAction(title: "Edit", style: .default, handler: { (_) in
            print("User click Edit button")
        }))
        
        alert.addAction(UIAlertAction(title: "Delete", style: .destructive, handler: { (_) in
            print("User click Delete button")
        }))
        
        alert.addAction(UIAlertAction(title: "Dismiss", style: .cancel, handler: { (_) in
            print("User click Dismiss button")
        }))
        

 */
    }
}



