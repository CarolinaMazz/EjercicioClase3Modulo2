//
//  TablaViewController.swift
//  EjercicioClase3Modulo2
//
//  Created by alumno on 2/03/17.
//  Copyright © 2017 alg. All rights reserved.
//

import UIKit

class TablaViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var listado = Array<Elemento>()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        for i in 1...7 {
            let elemento = Elemento()
            elemento.titulo = "Elmento \(i)"
            elemento.precio = 10.00 * Float(i)
            elemento.img = UIImage(named:"image_ \(i)")

            listado.append(elemento)
            
        }

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listado.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //asignamos el modelo de la celda al que creamos ElementoTableViewCell
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "celdamodelo", for: indexPath) as! ElementoTableViewCell
        
        let indice = indexPath.row
        let elemento = listado[indice]
        
        cell.lbTitulo.text = elemento.titulo
        cell.lbPrecio.text = "S/ \(elemento.precio!)"
        
        return cell
        
    }

}
