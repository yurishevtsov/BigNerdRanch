//
//  ConversionViewController.swift
//  WorldTrotter
//
//  Created by Yuri Shevtsov on 6/20/20.
//  Copyright © 2020 Yuri Shevtsov. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Create all labels and define their properties
        let fValueLabel = UILabel()
        fValueLabel.text = "202"
        fValueLabel.textAlignment = .center
        fValueLabel.textColor = UIColor(rgb: 0xE15829, alphaVal: 1.0)
        fValueLabel.font = .systemFont(ofSize: 70)
        fValueLabel.translatesAutoresizingMaskIntoConstraints = false

        let fDescriptionLabel = UILabel()
        fDescriptionLabel.text = "degrees Fahrenheit"
        fDescriptionLabel.textColor = UIColor(rgb: 0xE15829, alphaVal: 1.0)
        fDescriptionLabel.font = .systemFont(ofSize: 36)
        fDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let isReallyLabel = UILabel()
        isReallyLabel.text = "is really"
        isReallyLabel.font = .systemFont(ofSize: 36)
        isReallyLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let cValueLabel = UILabel()
        cValueLabel.text = "100"
        cValueLabel.textColor = UIColor(rgb: 0xE15829, alphaVal: 1.0)
        cValueLabel.font = .systemFont(ofSize: 70)
        cValueLabel.translatesAutoresizingMaskIntoConstraints = false
        
        let cDescriptionLabel = UILabel()
        cDescriptionLabel.text = "degrees Celcius"
        cDescriptionLabel.textColor = UIColor(rgb: 0xE15829, alphaVal: 1.0)
        cDescriptionLabel.font = .systemFont(ofSize: 36)
        cDescriptionLabel.translatesAutoresizingMaskIntoConstraints = false
        
        // Add labels to the view
        view.addSubview(fValueLabel)
        view.addSubview(cValueLabel)
        view.addSubview(fDescriptionLabel)
        view.addSubview(cDescriptionLabel)
        view.addSubview(isReallyLabel)
        
        // Define all the necessary contraints
        fValueLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12).isActive = true
        fDescriptionLabel.topAnchor.constraint(equalTo: fValueLabel.bottomAnchor, constant: 12).isActive = true
        isReallyLabel.topAnchor.constraint(equalTo: fDescriptionLabel.bottomAnchor, constant: 12).isActive = true
        cValueLabel.topAnchor.constraint(equalTo: isReallyLabel.bottomAnchor, constant: 8).isActive = true
        cDescriptionLabel.topAnchor.constraint(equalTo: cValueLabel.bottomAnchor, constant: 12).isActive = true
        
        fValueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        fDescriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        isReallyLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cValueLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        cDescriptionLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
}

// MARK: Extension to be able to use HEX RGB color values
extension UIColor {
    convenience init(rgb: UInt, alphaVal: CGFloat) {
        self.init(
            red: CGFloat((rgb & 0xFF0000) >> 16) / 255.0,
            green: CGFloat((rgb & 0x00FF00) >> 8) / 255.0,
            blue: CGFloat(rgb & 0x0000FF) / 255.0,
            alpha: alphaVal
        )
    }
}
