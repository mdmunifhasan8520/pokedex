//
//  Pokemon.swift
//  pokedex
//
//  Created by Mac PC on 3/11/20.
//  Copyright © 2020 Ticon. All rights reserved.
//

import Foundation

class Pokemon {
    //Create pokemon Properties
    private var _name: String!
    private var _description: String!
    private var _type: String!
    private var _height: String!
    private var _weight: String!
    private var _defense: String!
    private var _pokedexId: Int!
    private var _attack: String!
    private var _nextEvolutionTxt: String!
    
    
    
    //Pokemon getters
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
    }
    
}
