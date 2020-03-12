//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Mac PC on 3/12/20.
//  Copyright © 2020 Ticon. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
    
    var pokemon: Pokemon!

    @IBOutlet weak var nameLbl: UILabel!
    @IBOutlet weak var mainImg: UIImageView!
    @IBOutlet weak var descriptionLbl: UILabel!
    @IBOutlet weak var typeLbl: UILabel!
    @IBOutlet weak var defenseLbl: UILabel!
    @IBOutlet weak var heightLbl: UILabel!
    @IBOutlet weak var pokedexIdLbl: UILabel!
    @IBOutlet weak var weightLbl: UILabel!
    @IBOutlet weak var attackLbl: UILabel!
    @IBOutlet weak var evoLbl: UILabel!
    @IBOutlet weak var currentEvoImg: UIImageView!
    @IBOutlet weak var nextEvoImg: UIImageView!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name.uppercased()
        
        pokemon.downloadPokemonDetail {
            print("Did arrived here")
            //Whatever we write here will be called after the network call is completed
            self.updateUI()
        }
        
    }
    
    func updateUI() {
        weightLbl.text = String(pokemon.weight)
        print("pokemon.weight:  \(pokemon.weight)")
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    

}
