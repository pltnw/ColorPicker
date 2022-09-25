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

    @IBAction func sliderAction() {
        setupLabels()
    }
    
    private func setupLabels(){
        valueOfRed.text = (round(sliderRed.value * 100) / 100).formatted()
        valueOfGreen.text = (round(sliderGreen.value * 100) / 100).formatted()
        valueOfBlue.text = (round(sliderBlue.value * 100) / 100).formatted()
    }
}

