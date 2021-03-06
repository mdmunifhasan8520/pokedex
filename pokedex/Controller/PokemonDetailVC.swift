//
//  PokemonDetailVC.swift
//  pokedex
//
//  Created by Mac PC on 3/12/20.
//  Copyright © 2020 Ticon. All rights reserved.
//

import UIKit
import Alamofire

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
    
    @IBOutlet weak var segmentedLbl: UISegmentedControl!
    
 
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLbl.text = pokemon.name.uppercased()
        
        self.pokemon.downloadPokemonDetail {
            //weightLbl.setNeedsDisplay()
            self.updateUI()
        }

    }
    override func viewDidAppear(_ animated: Bool) {
        weightLbl.text = pokemon.weight
    }
    
    func clearDummyData() {
        weightLbl.text = ""
        heightLbl.text = ""
    }

 
    @IBAction func refreshBtn(_ sender: Any) {
        weightLbl.text = pokemon.weight
    }
    func updateUI() {
        weightLbl.text = pokemon.weight
    }
    
    @IBAction func backBtnPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
   
    
    
    @IBAction func segmentedControlIndexChanged(_ sender: Any) {
    switch segmentedLbl.selectedSegmentIndex
    {
    case 0:
    print("First")
    case 1:
    weightLbl.text = pokemon.weight
    default:
    break;
    }
    }
    
    
    
}


