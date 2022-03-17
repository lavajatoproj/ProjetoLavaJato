//
//  ValorTableViewCell.swift
//  Lava Jato
//
//  Created by Thiago Valentim on 16/03/22.
//

import UIKit

class ValorTableViewCell: UITableViewCell {

    
  
    @IBOutlet weak var valorLabel: UILabel!
    @IBOutlet weak var medidoSlider: UISlider!
    @IBOutlet weak var valorMinimoLabel: UILabel!
    @IBOutlet weak var valorMaximoLabel: UILabel!
    @IBOutlet weak var localServiceLabel: UILabel!
    
    //Criando a identificação da cell
    static let identifier:String = "ValorTableViewCell"
    
    //Método Nib para validar o arquivo Xib
    static func nib()->UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    // função que passa valores para elementos
   public func setupCell(setup:ProfileValor){
        self.valorLabel.text = setup.valor
        self.valorMinimoLabel.text = setup.valorMinimo
        self.valorMaximoLabel.text = setup.valorMaximo
        self.localServiceLabel.text = setup.local
    }
    
    
   
    @IBAction func medidorSlider(_ sender: UISlider) {
        
    }
    

    
}
