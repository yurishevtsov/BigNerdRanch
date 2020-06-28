//
//  ViewController.swift
//  WorldTrotter
//
//  Created by Yuri Shevtsov on 6/20/20.
//  Copyright © 2020 Yuri Shevtsov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var gradientSwitch: UISwitch!
    @IBOutlet var animationSwitch: UISwitch!
        
    var nonAnimatedGradient: CAGradientLayer!
    var animatedGradient: CAGradientLayer!
    
    override
    func viewDidLoad() {
        super.viewDidLoad()
        nonAnimatedGradient = createGradientLayer()
        animatedGradient = createGradientLayer()
    }
    
    func createGradientLayer() -> CAGradientLayer {
        let gradient = CAGradientLayer()
        gradient.colors = [UIColor.yellow.cgColor, UIColor.blue.cgColor, UIColor.yellow.cgColor]
        gradient.locations = [0 , 1]
        gradient.startPoint = CGPoint(x: 1, y: 0)
        gradient.endPoint = CGPoint(x: 0, y: 1)
        gradient.frame = view.frame
        return gradient
    }
    
    // MARK: Non Animated Gradient
    
    func enableNonAnimatedGradient() {
        view.layer.insertSublayer(nonAnimatedGradient, at: 0)
    }
    
    func disableNonAnimatedGradient() {
        nonAnimatedGradient.removeFromSuperlayer()
        gradientSwitch.setOn(false, animated: true)
    }

    @IBAction func toggleGradient(_ sender: UISwitch) {
        if sender.isOn {
            print("gradient switch is toggled on")
            disableAnimatedGradient()
            enableNonAnimatedGradient()
        } else {
            print("gradient switch is toggled off")
            disableNonAnimatedGradient()
        }
    }
    
    // MARK: Animated Gradient
        
    func createAnimation() -> CABasicAnimation {
        let animation = CABasicAnimation(keyPath: "locations")
        animation.fromValue = [0, 0, 0]
        animation.toValue = [0.75, 1, 1]
        animation.duration = 2
        animation.autoreverses = true
        animation.repeatCount = Float.infinity
        return animation
    }
        
    func enableAnimatedGradient() {
        animatedGradient.add(createAnimation(), forKey: nil)
        view.layer.insertSublayer(animatedGradient, at: 0)
    }
    
    func disableAnimatedGradient() {
        animatedGradient.removeFromSuperlayer()
        animationSwitch.setOn(false, animated: true)
    }
    
    @IBAction func toggleAnimation(_ sender: UISwitch) {
        if sender.isOn {
            print("animation switch is toggled on")
            disableNonAnimatedGradient()
            enableAnimatedGradient()
        } else {
            print("animation switch is toggled off")
            disableAnimatedGradient()
        }
    }
}
