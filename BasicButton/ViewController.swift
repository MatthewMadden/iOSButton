//
//  ViewController.swift
//  BasicButton
//
//  Created by Matthew Madden on 3/4/20.
//  Copyright © 2020 Matthew Madden. All rights reserved.
//

import UIKit

var tapCount = 0;
var randNum = Int.random(in: 1..<10);

class ViewController: UIViewController {
    @IBOutlet weak var button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func onButtonTap(_ sender: Any) {
        tapCount += 1;
        
        if button.backgroundColor == UIColor.red {
            button.backgroundColor = UIColor.blue
        } else {
            button.backgroundColor = UIColor.red
        }
        
        if tapCount >= 20 {
            button.setTitle(String(randNum), for: .normal)
        } else if tapCount >= 10 {
            button.setTitle("Ouch!", for: .normal)
        }
        
        print(tapCount)
    }
    
}

