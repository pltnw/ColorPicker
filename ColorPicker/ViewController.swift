//
//  ViewController.swift
//  ColorPicker
//
//  Created by Екатерина Платонова on 25.09.2022.
//

import UIKit

class ViewController: UIViewController {
   
    @IBOutlet var colorViev: UIView!
    
    @IBOutlet var valueOfRed: UILabel!
    @IBOutlet var valueOfGreen: UILabel!
    @IBOutlet var valueOfBlue: UILabel!
    
    @IBOutlet var sliderRed: UISlider!
    @IBOutlet var sliderGreen: UISlider!
    @IBOutlet var sliderBlue: UISlider!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorViev.layer.cornerRadius = 15
    }
    
    @IBAction func sliderAction(_ sender: UISlider) {
        setupColor()
        
        switch sender {
        case sliderRed:
            valueOfRed.text = string(from: sender)
        case sliderGreen:
            valueOfGreen.text = string(from: sender)
        default:
            valueOfBlue.text = string(from: sender)
        }
    }
    
    private func setupLabels() {
        valueOfRed.text = string(from: sliderRed)
        valueOfGreen.text = string(from: sliderGreen)
        valueOfBlue.text = string(from: sliderBlue)
    }
    
    private func setupColor() {
        colorViev.backgroundColor = UIColor.init(red: CGFloat(sliderRed.value), green: CGFloat(sliderGreen.value), blue: CGFloat(sliderBlue.value), alpha: 1)
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }
}

