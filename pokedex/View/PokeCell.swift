//
//  PokeCell.swift
//  pokedex
//
//  Created by Mac PC on 3/11/20.
//  Copyright © 2020 Ticon. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    
    @IBOutlet weak var thumbImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var _pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon: Pokemon) {
        self._pokemon = pokemon
        
        nameLbl.text = self._pokemon.name
        thumbImg.image = UIImage(named: "\(_pokemon.pokedexId)")
    }
    
}
