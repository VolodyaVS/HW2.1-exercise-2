//
//  ViewController.swift
//  HW2.1 exercise 2
//
//  Created by Vladimir Stepanchikov on 20.08.2020.
//  Copyright © 2020 Vladimir Stepanchikov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var redOutlet: UIView!
    @IBOutlet weak var yellowOutlet: UIView!
    @IBOutlet weak var greenOutlet: UIView!
    
    @IBOutlet weak var buttonOutlet: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redOutlet.layer.cornerRadius = redOutlet.layer.bounds.size.width / 2
        yellowOutlet.layer.cornerRadius = yellowOutlet.layer.bounds.size.width / 2
        greenOutlet.layer.cornerRadius = greenOutlet.layer.bounds.size.width / 2
        
        buttonOutlet.layer.cornerRadius = 10
    }
    
    @IBAction func buttonAction(_ sender: Any) {
        
        if redOutlet.alpha != 1,
            yellowOutlet.alpha != 1,
            greenOutlet.alpha != 1 {
            redOutlet.alpha = 1
        } else if redOutlet.alpha == 1 {
            redOutlet.alpha = 0.3
            yellowOutlet.alpha = 1
        } else if yellowOutlet.alpha == 1 {
            yellowOutlet.alpha = 0.3
            greenOutlet.alpha = 1
        } else {
            greenOutlet.alpha = 0.3
            redOutlet.alpha = 1
        }
        buttonOutlet.setTitle("NEXT", for: .normal)
    }
    
}

