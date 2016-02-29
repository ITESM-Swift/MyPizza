//
//  vistaQuesoViewController.swift
//  MyPizza
//
//  Created by Paco Alvizo on 2/11/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import UIKit

class vistaQuesoViewController: UIViewController {
    var primerVisita : Bool = false

    @IBAction func quesoMosarella(sender: AnyObject) {
        pizza.setQueso("Mosarella")
    }
    @IBAction func quesoChedar(sender: AnyObject) {
        pizza.setQueso("Chedar")
    }
    
    @IBAction func quesoParmesano(sender: AnyObject) {
        pizza.setQueso("Parmesano")
    }
    
    @IBAction func quesoSin(sender: AnyObject) {
        pizza.setQueso("Sin Queso")
    }
    

    override func viewWillAppear(animated: Bool) {
    //    if (menuInferiorQuesos.hidden && !primerVisita){
    //        menuInferiorQuesos.hidden=false
    //    }
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
