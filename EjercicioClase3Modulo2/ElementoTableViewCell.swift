//
//  ElementoTableViewCell.swift
//  EjercicioClase3Modulo2
//
//  Created by alumno on 2/03/17.
//  Copyright © 2017 alg. All rights reserved.
//

import UIKit

class ElementoTableViewCell: UITableViewCell {

    @IBOutlet weak var lbPrecio: UILabel!
    @IBOutlet weak var lbTitulo: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
