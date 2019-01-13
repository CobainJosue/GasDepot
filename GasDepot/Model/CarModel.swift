//
//  CarModel.swift
//  GasDepot
//
//  Created by Josue Quiñones on 1/12/19.
//  Copyright © 2019 Josue Quiñones. All rights reserved.
//

import Foundation

class CarModel {
    var agency: String
    var car: String
    var year: Int
    var isSelected: Bool = false
    
    init(agency: String, car: String, year: Int) {
        self.agency = agency
        self.car = car
        self.year = year
    }
    
    func toggleCheck() {
        isSelected = !isSelected
    }
    
}

var cars: [CarModel] = [CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007),CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007),CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007),CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007),CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007),CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007),CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007),CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007), CarModel(agency: "Pontiac", car: "G3", year: 2007)]
