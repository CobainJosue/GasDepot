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
    @IBOutlet weak var indicatorLabel: UILabel!
    @IBOutlet weak var leftBarButtonItem: UIBarButtonItem!
    @IBOutlet weak var rightBarButtonItem: UIBarButtonItem!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        knob.lineWidth = 5
        knob.pointerLength = 40
        
        //knob.setValue(0.0)
        
        knob.addTarget(self, action: #selector(ViewController.handleValueChanged(_:)), for: .valueChanged)
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        let nav = self.navigationController?.navigationBar
        
        nav?.barStyle = UIBarStyle.black
        nav?.tintColor = UIColor(named: "lightBlue")
        
        leftBarButtonItem.image = UIImage(named: "carIcon")
        rightBarButtonItem.image = UIImage(named: "graphicsIcon")
    }
    
    
    @IBAction func handleValueChanged(_ sender: Any) {
        //actualizar porcentaje
        
        indicatorLabel.text = "\(String(format: "%.2f", knob.value * 100)) %"
        
    }
    
//    func refreshArrow(_ angle: CGFloat) {
//
//        imageIV.transform = imageIV.transform.rotated(by: angle)
//
//    }
    


}

