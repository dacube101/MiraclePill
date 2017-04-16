//
//  ViewController.swift
//  MiraclePill
//
//  Created by rafael rivera on 4/7/17.
//  Copyright © 2017 rafael rivera. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var statePicker: UIPickerView!
    @IBOutlet weak var statePickerBtn: UIButton!
    @IBOutlet weak var BuyNowBtn: UIButton!
    
    @IBOutlet weak var successindicator: UIImageView!
    
    @IBOutlet weak var pill: UIImageView!
    @IBOutlet weak var pillLabel: UILabel!
    @IBOutlet weak var amount150: UILabel!
    @IBOutlet weak var divider: UIView!
    @IBOutlet weak var name: UILabel!
    @IBOutlet weak var nameLabel: UITextField!
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var addressLabel: UITextField!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var cityLabel: UITextField!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var country: UILabel!
    @IBOutlet weak var countryLabel: UITextField!
    @IBOutlet weak var zipCode: UILabel!
    @IBOutlet weak var zipCodeLabel: UITextField!
    
    
    
    
    
    
    let states = ["Alaska","Arkansa","Alabama","California","Maine","New York"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statePicker.dataSource = self
        statePicker.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
           }

    
    @IBAction func buyNowBtnPressed(_ sender: Any) {
        successindicator.isHidden = false
        name.isHidden = true
        nameLabel.isHidden = true
        address.isHidden = true
        addressLabel.isHidden = true
        city.isHidden = true
        cityLabel.isHidden = true
        state.isHidden = true
        country.isHidden = true
        countryLabel.isHidden = true
        zipCode.isHidden = true
        zipCodeLabel.isHidden = true
    }
    
        @IBAction func stateBtnPressed(_ sender: Any) {
        statePicker.isHidden = false
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
                
    }
    
}

