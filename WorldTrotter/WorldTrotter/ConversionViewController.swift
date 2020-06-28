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
        
        func createLabelWithProps(labelText: String,
                                  rgbColor: UInt = 0x000000,
                                  fontSize: CGFloat = 36) -> UILabel {
            let label = UILabel()
            label.text = labelText
            label.textAlignment = .center
            label.textColor = UIColor(rgb: rgbColor, alphaVal: 1.0)
            label.font = .systemFont(ofSize: fontSize)
            label.translatesAutoresizingMaskIntoConstraints = false
            view.addSubview(label)
            return label
        }
        
        func centerLabelInView(label: UILabel) {
            label.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        }
        
        // Create all labels and define their properties
        let fValueLabel = createLabelWithProps(labelText: "202", rgbColor: 0xE15829, fontSize: 70)
        let fDescriptionLabel = createLabelWithProps(labelText: "degrees Fahrengeit", rgbColor: 0xE15829)
        let isReallyLabel = createLabelWithProps(labelText: "is really")
        let cValueLabel = createLabelWithProps(labelText: "100", rgbColor: 0xE15829, fontSize: 70)
        let cDescriptionLabel = createLabelWithProps(labelText: "degrees Celcius", rgbColor: 0xE15829)
        
        // Define all the necessary contraints
        fValueLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 12).isActive = true
        fDescriptionLabel.topAnchor.constraint(equalTo: fValueLabel.bottomAnchor, constant: 12).isActive = true
        isReallyLabel.topAnchor.constraint(equalTo: fDescriptionLabel.bottomAnchor, constant: 12).isActive = true
        cValueLabel.topAnchor.constraint(equalTo: isReallyLabel.bottomAnchor, constant: 12).isActive = true
        cDescriptionLabel.topAnchor.constraint(equalTo: cValueLabel.bottomAnchor, constant: 12).isActive = true
        
        centerLabelInView(label: fValueLabel)
        centerLabelInView(label: fDescriptionLabel)
        centerLabelInView(label: isReallyLabel)
        centerLabelInView(label: cValueLabel)
        centerLabelInView(label: cDescriptionLabel)
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
