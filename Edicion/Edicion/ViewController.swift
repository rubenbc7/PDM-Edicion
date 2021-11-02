//
//  ViewController.swift
//  Edicion
//
//  Created by Alumno on 01/11/21.
//  Copyright © 2021 El ruben. All rights reserved.
//

import UIKit
import Foundation

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tvView: UITableView!
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return views.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 64
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let celda = tableView.dequeueReusableCell(withIdentifier: "CeldaViewController") as! CeldaViewController
        celda.lblNombre.text = views[indexPath.row].nombre
        celda.lblNumero.text = views[indexPath.row].numero
        celda.lblCorreo.text = views[indexPath.row].correo
        
        return celda
    }
    var views : [View] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Contactos"
        views.append(View(nombre: "pancho",correo: "sabe@gmail.com", numero:"de la suerte"))
        views.append(View(nombre: "chuy",correo: "sabe@gmail.com", numero:"de la suerte"))
        views.append(View(nombre: "Lalo",correo: "sabe@gmail.com", numero:"de la suerte"))
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

