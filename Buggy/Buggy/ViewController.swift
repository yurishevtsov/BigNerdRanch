//
//  ViewController.swift
//  Buggy
//
//  Created by Yuri Shevtsov on 7/4/20.
//  Copyright © 2020 Yuri Shevtsov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonTapped(_ sender: UIButton) {
        print("Method: \(#function) in file: \(#file) line: \(#line) called.")
            badMethod()
        }

        func badMethod() {
            let array = NSMutableArray()

            for i in 0..<10 {
                array.insert(i, at: i)
            }

            // Go one step too far emptying the array (notice the range change):
            for _ in 0...10 {
                array.removeObject(at: 0)
            }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

