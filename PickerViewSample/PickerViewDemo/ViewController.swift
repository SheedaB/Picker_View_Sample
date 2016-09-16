//
//  ViewController.swift
//  PickerViewDemo
//
//  Created by Rasheda Jacobs on 9/9/16.
//  Copyright © 2016 Rasheda Babatunde. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {
    
    var pickerColors = ["White", "Red", "Green", "Purple", "Gray"];

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfComponentsInPickerView(pickerView: UIPickerView) -> Int {
        
        return 1
        
    }
    
    func pickerView(pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        
        return pickerColors.count
        
    }
    
    func pickerView(pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        return pickerColors[row]
        
    }
    
    func pickerView(pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        
        switch row {
        case 0: self.view.backgroundColor = UIColor.whiteColor()
        case 1: self.view.backgroundColor = UIColor.redColor()
        case 2: self.view.backgroundColor = UIColor.greenColor()
        case 3: self.view.backgroundColor = UIColor.purpleColor()
        default: self.view.backgroundColor = UIColor.lightGrayColor()
        }
        
    }
}



