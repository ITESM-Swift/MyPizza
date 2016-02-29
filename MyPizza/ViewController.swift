//
//  ViewController.swift
//  MyPizza
//
//  Created by Paco Alvizo on 2/9/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var primerVisita : Bool = false

    
    @IBAction func PizaChica(sender: AnyObject) {
        pizza.setTamaño("Chica")
    }
    
    @IBAction func pizzaMediana(sender: AnyObject) {
        pizza.setTamaño("Mediana")
    }
    
    @IBAction func pizzaGrande(sender: AnyObject) {
        pizza.setTamaño("Grande")
    }
    
    
    override func viewWillAppear(animated: Bool) {

    }
    
    @IBAction func Ordenar(sender: AnyObject) {
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //primerVisita=true
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

