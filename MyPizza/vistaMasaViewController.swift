//
//  vistaMasaViewController.swift
//  MyPizza
//
//  Created by Paco Alvizo on 2/11/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import UIKit


class vistaMasaViewController: UIViewController {
    var primerVisita : Bool = false
    
    @IBAction func masaDelgada(sender: AnyObject) {
        pizza.setMasa("Delgada")
    }
    @IBAction func masaCrujiente(sender: AnyObject) {
        pizza.setMasa("Crujiente")
    }
    @IBAction func masaGruesa(sender: AnyObject) {
        pizza.setMasa("Gruesa")
    }

    override func viewWillAppear(animated: Bool) {
       // if (menuInferiorMasas.hidden && !primerVisita){
       //     menuInferiorMasas.hidden=false
       // }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        primerVisita=true
        // Do any additional setup after loading the view.
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
