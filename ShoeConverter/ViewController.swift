//
//  ViewController.swift
//  ShoeConverter
//
//  Created by travis albers on 9/24/14.
//  Copyright (c) 2014 travis albers. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var mensConvertedShoeSizeLabel: UILabel!
    
    @IBOutlet weak var womensShoeSizeTextField: UITextField!
    
    @IBOutlet weak var womensConvertedShoeSizeLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func convertButtonPressed(sender: UIButton)
    {
        let sizeFromTextField = mensShoeSizeTextField.text
        let numberFromTextField = sizeFromTextField.toInt()
        var integerFromTextField = numberFromTextField!
        let conversionConstant = 30
        integerFromTextField += conversionConstant
        mensConvertedShoeSizeLabel.hidden = false
        let stringWithUpDatedShoeSize = "\(integerFromTextField)" + " in European Shoe Size"
        mensConvertedShoeSizeLabel.text = stringWithUpDatedShoeSize
        mensShoeSizeTextField.resignFirstResponder()
    }
    @IBAction func convertedWomensShoeSizeButtonPressed(sender: UIButton)
    {
       let sizeFromTextField = Double((womensShoeSizeTextField.text as NSString).doubleValue)
        let conversionConstant = 30.5
        womensConvertedShoeSizeLabel.hidden = false
        womensConvertedShoeSizeLabel.text = "\(sizeFromTextField + conversionConstant)" + " in European Shoe Size"
        womensShoeSizeTextField.resignFirstResponder()
        
    
        
        
        
        
    }

}

