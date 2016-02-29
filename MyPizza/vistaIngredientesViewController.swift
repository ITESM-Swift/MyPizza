//
//  vistaIngredientesViewController.swift
//  MyPizza
//
//  Created by Paco Alvizo on 2/11/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import UIKit

class vistaIngredientesViewController: UIViewController {
    var primerVisita : Bool = false
    var contador : Int = 0
    var ingredientes :[String] = []
    
    @IBOutlet weak var btnOrdena: UIButton!
    @IBOutlet weak var cantidadIngredientes: UILabel!
    @IBOutlet weak var swJamon: UISwitch!
    @IBOutlet weak var swPeperoni: UISwitch!
    @IBOutlet weak var swPavo: UISwitch!
    @IBOutlet weak var swSanchicha: UISwitch!
    @IBOutlet weak var swAceituna: UISwitch!
    @IBOutlet weak var swCebolla: UISwitch!
    @IBOutlet weak var swPimiento: UISwitch!
    @IBOutlet weak var swPina: UISwitch!
    @IBOutlet weak var swAnchoas: UISwitch!
    @IBOutlet weak var swChampignones: UISwitch!
    
    @IBAction func swJamonChanged(sender: AnyObject) {
        stateChanged(swJamon)
    }
    @IBAction func swPeperoniChanged(sender: AnyObject) {
        stateChanged(swPeperoni)
    }
    @IBAction func swPavoChanged(sender: AnyObject) {
        stateChanged(swPavo)
    }
    @IBAction func swSalchichaChanged(sender: AnyObject) {
        stateChanged(swSanchicha)
    }
    @IBAction func swAceitunaChanged(sender: AnyObject) {
        stateChanged(swAceituna)
    }
    @IBAction func swCebollaChanged(sender: AnyObject) {
        stateChanged(swCebolla)
    }
    @IBAction func swPimientoChanged(sender: AnyObject) {
        stateChanged(swPimiento)
    }
    @IBAction func swPinaChanged(sender: AnyObject) {
        stateChanged(swPina)
    }
    @IBAction func swAnchoasChanged(sender: AnyObject) {
        stateChanged(swAnchoas)
    }
    @IBAction func swChampignonesChanged(sender: AnyObject) {
        stateChanged(swChampignones)
    }
    
    @IBAction func btnOrdenar(sender: AnyObject) {
        pizza.setIngredientes(ingredientes)
    }
    
   /* func buscaElemento(arreglo : [String], cadena:String)->Int{
        while (i<=arreglo.index)
        return 2
    
    }*/
    

    func stateChanged(sw: UISwitch){
        if sw.on{
            ingredientes.insert(selecciona(sw)!, atIndex: contador)
            contador=contador + 1
            if (contador==1){
                btnOrdena.hidden=false
            }
        }else{
            contador=contador - 1
            ingredientes.removeAtIndex(ingredientes.indexOf(selecciona(sw)!)!)
            if (contador==0){
                btnOrdena.hidden=true
            }
        }
        
        if contador == 5 {
            //Deshabilita botones no elegidos
            deshabilitaBotones()
        }else if (contador < 5 ) {
            //Habilita botones
            habilitaBotones()
        }
            cantidadIngredientes.text=String(contador)
    }
    
    func deshabilitaBotones(){
        apagar(swJamon)
        apagar(swPeperoni)
        apagar(swPavo)
        apagar(swSanchicha)
        apagar(swAceituna)
        apagar(swCebolla)
        apagar(swPimiento)
        apagar(swPina)
        apagar(swAnchoas)
        apagar(swChampignones)
    }
    
    func habilitaBotones(){
        encender(swJamon)
        encender(swPeperoni)
        encender(swPavo)
        encender(swSanchicha)
        encender(swAceituna)
        encender(swCebolla)
        encender(swPimiento)
        encender(swPina)
        encender(swAnchoas)
        encender(swChampignones)
    }
    func apagar (sw : UISwitch) {
        if !sw.on {
            sw.enabled=false
        }
    }
    
    func encender (sw :UISwitch){
        if sw.enabled == false {
            sw.enabled=true
        }
    }
    
    func selecciona (sw:UISwitch)->String?{
        var ingrediente : String
        switch sw{
        case swJamon:
            ingrediente = "Jamón"
        case swPeperoni:
            ingrediente="Peperoni"
        case swPavo:
            ingrediente="Pavo"
        case swSanchicha:
            ingrediente="Salchicha"
        case swAceituna:
            ingrediente="Aceituna"
        case swCebolla:
            ingrediente="Cebolla"
        case swPimiento:
            ingrediente="Pimiento"
        case swPina:
            ingrediente="Piña"
        case swAnchoas:
            ingrediente="Anchoas"
        case swChampignones:
            ingrediente="Champiñones"
        default:
            ingrediente=""
        }
        return ingrediente
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        primerVisita=true
        btnOrdena.hidden=true
        ingredientes=pizza.getIngredientes()
        if (!ingredientes.isEmpty){
            swJamon.setOn(ingredientes.contains("Jamón"), animated: true)
            swPeperoni.setOn(ingredientes.contains("Peperoni"), animated: true)
            swPavo.setOn(ingredientes.contains("Pavo"), animated: true)
            swSanchicha.setOn(ingredientes.contains(("Salchicha")), animated: true)
            swAceituna.setOn(ingredientes.contains("Aceituna"), animated: true)
            swCebolla.setOn(ingredientes.contains("Cebolla"), animated: true)
            swPimiento.setOn(ingredientes.contains("Pimiento"), animated: true)
            swPina.setOn(ingredientes.contains("Piña"), animated: true)
            swAnchoas.setOn(ingredientes.contains("Anchoas"), animated: true)
            swChampignones.setOn(ingredientes.contains("Champiñones"), animated: true)
            btnOrdena.hidden=false
            contador=ingredientes.count
            if (contador==5){
                deshabilitaBotones()
            }
            cantidadIngredientes.text=String(contador)
        }
        
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
