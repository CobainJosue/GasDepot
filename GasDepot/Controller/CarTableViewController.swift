//
//  CarTableViewController.swift
//  GasDepot
//
//  Created by Josue Quiñones on 1/12/19.
//  Copyright © 2019 Josue Quiñones. All rights reserved.
//

import UIKit

class CarTableViewController: UITableViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        print("view will appear")
        
        let car = CarModel(agency: "", car: "", year: 0)
        
        if let selected = car.readData(){
            print("viewDidLoad selected: \(selected)")
            print(cars[selected].isSelected)
            cars[selected].isSelected = true
            // tableView.reloadData()
        }
    }
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cars.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Car", for: indexPath) as! CarTableViewCell

        // Configure the cell...
        cell.textLabel?.text = cars[indexPath.row].car
        cell.detailTextLabel?.text = "Agencia: \(cars[indexPath.row].agency)    Year: \(cars[indexPath.row].year)"
        
        cell.showCheck(check: cars[indexPath.row].isSelected)

        return cell
    }
 

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let cell = tableView.cellForRow(at: indexPath) as! CarTableViewCell
        let car = cars[indexPath.row]
        
        
        if let selected = car.readData(){
            print("selected: \(selected)")
            cars[selected].toggleCheck()
            #warning("Al hacer reloadData() se deben pintar todas las celdas de nuevo")
            tableView.reloadData()
        }
        
        car.toggleCheck()
        car.saveData(choice: indexPath.row)
        cell.showCheck(check: car.isSelected)
    }

}
