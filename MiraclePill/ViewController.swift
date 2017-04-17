//
//  ViewController.swift
//  MiraclePill
//
//  Created by rafael rivera on 4/7/17.
//  Copyright © 2017 rafael rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var backButton: UIButton!
    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var BuyNowBtn: UIButton!
    
    @IBOutlet weak var countryLabel: UILabel!
    
    @IBOutlet weak var countryTextField: UITextField!
    
    @IBOutlet weak var zipCodeLabel: UILabel!
    @IBOutlet weak var zipCodeTextField: UITextField!
    @IBOutlet weak var succesIndicator: UIImageView!
    
    let states = ["Alaska","Arkansa","Alabama","California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }

    @IBAction func backButtonPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView] {
            view.isHidden = false
            succesIndicator.isHidden = true
            statePicker.isHidden = true
            
        }
    }
    
    @IBAction func BuyNowBtnPressed(_ sender: Any) {
        for view in self.view.subviews as [UIView] {
            view.isHidden = true
            succesIndicator.isHidden = false
            backButton.isHidden = false
        }
    }
    
        @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
            countryTextField.isHidden = true
            countryLabel.isHidden = true
            zipCodeTextField.isHidden = true
            zipCodeLabel.isHidden = true
                            }
    
    
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return states.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return states[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        statePickerBtn.setTitle(states[row], for: UIControlState.normal)
        statePicker.isHidden = true
        countryTextField.isHidden = false
        countryLabel.isHidden = false
        zipCodeTextField.isHidden = false
        zipCodeLabel.isHidden = false
    }
    
}

