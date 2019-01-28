//
//  ViewController.swift
//  j&Bs
//
//  Created by Macabuku on 26/1/19.
//  Copyright © 2019 Macabuku. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        showSimpleAlert()
    }

    
    func showSimpleAlert() {
        let alert = UIAlertController(title: "Sign out?", message: "You can always access your content by signing back in",         preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.default, handler: { _ in
            //Cancel Action
        }))
        alert.addAction(UIAlertAction(title: "Sign out",
                                      style: UIAlertAction.Style.default,
                                      handler: {(_: UIAlertAction!) in
                                        //Sign out action
        }))
        self.present(alert, animated: true, completion: nil)
    }
        
        
    }



