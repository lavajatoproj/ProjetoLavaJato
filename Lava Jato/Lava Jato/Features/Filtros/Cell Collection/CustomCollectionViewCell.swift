//
//  CustomCollectionViewCell.swift
//  Lava Jato
//
//  Created by Thiago Valentim on 16/03/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {

    
    static let identifier:String = "CustomCollectionViewCell"
    
    static func nib()->UINib{
        return UINib(nibName: self.identifier, bundle: nil)
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
