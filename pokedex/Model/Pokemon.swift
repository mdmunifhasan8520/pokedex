//
//  Pokemon.swift
//  pokedex
//
//  Created by Mac PC on 3/11/20.
//  Copyright © 2020 Ticon. All rights reserved.
//

import Foundation
import Alamofire

class Pokemon {
    //Create pokemon Properties
    private var _name: String!
    private var _description: String!
    private var _type: String!
    private var _height: String!
    private var _weight: Int!
    private var _defense: String!
    private var _pokedexId: Int!
    private var _attack: String!
    private var _nextEvolutionTxt: String!
    
    private var _pokemonURL: String!
    
    
    
    //Pokemon getters
    var weight: Int {
        if _weight == nil { // This is called data binding or data protection
            _weight = 0
        }
        return _weight
        
    }
    
    var name: String {
        return _name
    }
    var pokedexId: Int {
        return _pokedexId
    }
    
    //Initialize pokemon properties
    init(name: String, pokedexId: Int) {
        self._name = name
        self._pokedexId = pokedexId
        self._pokemonURL = "\(URL_BASE)\(URL_POKEMON)\(self._pokedexId!)/"
        
    }
    
    //MARK:Netwok call
    //download pokemon details from the API
    func downloadPokemonDetail(completed: DownloadComplete) {
        AF.request(_pokemonURL).responseJSON { response in
            //debugPrint(response.value!)
            print(self._pokemonURL)
            if let dict = response.value as? Dictionary<String, AnyObject> {
                if let weight = dict["weight"] as? Int {
                    self._weight = weight
                }
                //print(String(self._weight!))
                print(self._weight!)
            }
            
        }
        completed()
    }

    
}
