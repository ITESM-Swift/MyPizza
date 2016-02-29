//
//  vistaPedidoViewController.swift
//  MyPizza
//
//  Created by Paco Alvizo on 2/19/16.
//  Copyright © 2016 Paco Alvizo. All rights reserved.
//

import UIKit

class vistaPedidoViewController: UIViewController {
    @IBOutlet weak var txtPedido: UITextView!
    @IBOutlet weak var toolBarCambios: UIToolbar!
    @IBAction func btnOrdenar(sender: AnyObject) {
    }
    /*@IBAction func btnCambios(sender: AnyObject) {
        toolBarCambios.hidden=false;
    }*/

    override func viewDidLoad() {
        super.viewDidLoad()
        txtPedido.text=""
        let ingredientes : [String] = pizza.getIngredientes()
        var mostrarCadena : String
        mostrarCadena = "El tamaño de tu pizza es: \(pizza.getTamaño())\nLa masa de tu pizza es: \(pizza.getMasa())\nEl queso que escojiste es: \(pizza.getQueso())\nLos ingredientes son:"
        
        for dato in ingredientes {
            mostrarCadena = mostrarCadena + "\n\(dato)"
        }
        txtPedido.text=mostrarCadena

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
