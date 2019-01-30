//
//  Car.swift
//  Mi garaje
//
//  Created by Macabuku on 29/1/19.
//  Copyright © 2019 Macabuku. All rights reserved.
//

import Foundation
import UIKit
class Car: NSObject {
    
    var cv : Int!
    var marca : String!
    var modelo : String!
    var color : UIColor!
    var kms : Double!
    var image : UIImage?
    
    override var description: String {
        
        return "Mi coche es un \(marca!) \(modelo!) con \(cv!) caballos de potencia"
    }
    
    
    override init(){
        cv = 0
        marca = "Desconocida"
        modelo = "Desconocido"
        color = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        kms = 0
        
    }
    
    init(cv: Int, marca: String, modelo: String, color: UIColor, kms: Double, image : UIImage?){
        
        self.cv = cv
        self.marca = marca
        self.modelo = modelo
        self.color = color
        self.kms = kms
        if let image = image{
            self.image = image
            
            
            /*
 if let ImageName = imageName{
 self.image = UIImage(named: ImageName)
            */
            
        } 
    }
    
}
