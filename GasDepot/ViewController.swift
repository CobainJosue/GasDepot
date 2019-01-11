//
//  ViewController.swift
//  GasDepot
//
//  Created by Josue Quiñones on 1/5/19.
//  Copyright © 2019 Josue Quiñones. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var knob: Knob!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        knob.lineWidth = 5
        knob.pointerLength = 50
        
        knob.setValue(0.0)
        
       
        
    }
    


}

