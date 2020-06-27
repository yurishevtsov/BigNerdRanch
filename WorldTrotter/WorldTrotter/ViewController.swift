//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Yuri Shevtsov on 6/20/20.
//  Copyright © 2020 Yuri Shevtsov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        let firstFrame = CGRect(x: 160, y: 240, width: 100, height: 150)
//        let firstView = UIView(frame: firstFrame)
//        firstView.backgroundColor = UIColor.blue
//        view.addSubview(firstView)
//
//        let secondFrame = CGRect(x: 20, y: 30, width: 50, height: 50)
//        let secondView = UIView(frame: secondFrame)
//        secondView.backgroundColor = UIColor.green
//        firstView.addSubview(secondView)
//    }
//    var gradSwitchState: Bool = false
//
//    var animSwitchState: Bool = false
    
    var grad = CAGradientLayer()
    
    func gradient() {
        grad.colors = [UIColor.yellow.cgColor, UIColor.blue.cgColor, UIColor.yellow.cgColor]
        grad.locations = [0 , 1]
        grad.startPoint = CGPoint(x: 0, y: 0)
        grad.endPoint = CGPoint(x: 0, y: 1)
        grad.frame = view.frame
    }
    
    func animate() {
        gradient()
        let gradAnim = CABasicAnimation(keyPath: "locations")
        gradAnim.fromValue = [0, 0, 0]
        gradAnim.toValue = [0.75, 1, 1]
        gradAnim.duration = 2
        gradAnim.autoreverses = true
        gradAnim.repeatCount = Float.infinity
        grad.add(gradAnim, forKey: nil)
    }
    
    @IBOutlet var stateGradSwitch: UISwitch!
    @IBOutlet var stateAnimSwitch: UISwitch!
    

    @IBAction func toggleGradient(_ sender: UISwitch) {
        if sender.isOn {
            print("toggled on")
            gradient()
            view.layer.insertSublayer(grad, at: 0)
        } else {
            print("toggled off")
            grad.removeFromSuperlayer()
        }
    }
    
    @IBAction func toggleAnim(_ sender: UISwitch) {
        if sender.isOn {
            print("toggled on")
            animate()
            view.layer.insertSublayer(grad, at: 0)
        } else {
            print("toggled off")
            if stateGradSwitch.isOn {
                grad.removeFromSuperlayer()
                grad = CAGradientLayer()
                gradient()
                view.layer.insertSublayer(grad, at: 0)
            } else {
                grad.removeFromSuperlayer()
            }
        }
    }
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        stateGradSwitch.addTarget(self, action: #selector(stateChanged), for: .valueChanged)
//    }
//
//    @objc func stateChanged(switchState: UISwitch) {
//        if switchState.isOn {
////            textLabel.text = "The Switch is On"
//        } else {
////            textLabel.text = "The Switch is Off"
//        }
//    }
    

//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
////        let fullScreen: CGRect = UIScreen.main.bounds
//
//
//
//        let grad = CAGradientLayer()
//        grad.colors = [UIColor.yellow.cgColor, UIColor.blue.cgColor, UIColor.yellow.cgColor]
////        grad.transform = CATransform3DMakeRotation(CGFloat.pi / 2, 0, 0, 2)
//
//
//        grad.locations = [0 , 1]
//        grad.startPoint = CGPoint(x: 0, y: 0)
//        grad.endPoint = CGPoint(x: 0, y: 1)
//        grad.frame = view.frame
//
////        func animate() {
////            let gradAnim = CABasicAnimation(keyPath: "locations")
////            gradAnim.fromValue = [0, 0, 0.25]
////            gradAnim.toValue = [0.75, 1, 1]
////            gradAnim.duration = 1
////            gradAnim.autoreverses = true
////            gradAnim.repeatCount = Float.infinity
////            grad.add(gradAnim, forKey: nil)
////        }
//        let gradAnim = CABasicAnimation(keyPath: "locations")
//        gradAnim.fromValue = [0, 0, 0]
//        gradAnim.toValue = [0.75, 1, 1]
//        gradAnim.duration = 2
//        gradAnim.autoreverses = true
//        gradAnim.repeatCount = Float.infinity
//        grad.add(gradAnim, forKey: nil)
//
//        view.layer.insertSublayer(grad, at: 0)
//
//
//
//    }
//
}

