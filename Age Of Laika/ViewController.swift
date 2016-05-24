//
//  ViewController.swift
//  Age Of Laika
//
//  Created by Mr. Nobel on 5/24/16.
//  Copyright © 2016 Mr. Nobel. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var dogYearsLabel: UILabel!
    @IBOutlet weak var enteredHumanYearsTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.backgroundColor = UIColor( patternImage: UIImage(named: "background")! )
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsPressed(sender: UIButton) {
        
        let stringFromTextField = enteredHumanYearsTextField.text!
        let intFromString = Int( stringFromTextField )!
        
        dogYearsLabel.text = "\(intFromString * 7) Human years" //..... converts the age entered and updates label text
        dogYearsLabel.hidden = false //................................ makes the label visible b/c its currently hidden
        
        enteredHumanYearsTextField.resignFirstResponder() //........... makes the keyboard hidden
    }

    @IBAction func convertToDogYearsActualPressed(sender: UIButton) {
        let stringFromText = enteredHumanYearsTextField.text! //........................... gets data from TF
        let convertedAge = Double( stringFromText )! //.................................... converts to double
        
        var realDogYears: Double
        
        if( convertedAge > 2 ){ realDogYears = ( 10.5 * 2 ) + ( convertedAge - 2 ) * 4 } //. actual math
        else{ realDogYears = convertedAge * 10.5 }
        
        dogYearsLabel.text = "\(realDogYears) Human Years" //............................... update labels and unhide
        dogYearsLabel.hidden = false
        
        enteredHumanYearsTextField.resignFirstResponder() //................................ hide keyboard
    }
}

