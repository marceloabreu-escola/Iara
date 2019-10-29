//
//  ViewController.swift
//  Recuperacao45204
//
//  Created by Developer on 25/10/19.
//  Copyright © 2019 Developer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amount: UITextField!
    @IBOutlet weak var display: UILabel!
    @IBOutlet weak var taxas: UITextField!
    
    var fromNumber = Int()
    var toNumber = Int()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        display.text = ""
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

    
    @IBAction func convertFrom(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            fromNumber = 0 //dollar
            if(toNumber == 0){ // Euros
                taxas.text = "0.90"
            } else if(toNumber == 1){ // Pound
                taxas.text = "0.77"
            } else if(toNumber == 2){ // Yen
                taxas.text = "108.41"
            } else if(toNumber == 3){ // Real
                taxas.text = "4.11"
            } else {
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            }
            break
        case 1:
            fromNumber = 1 //euros
            if(toNumber == 0){ // Euros
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            } else if(toNumber == 1){ //Pound
                taxas.text = "0.86"
            } else if(toNumber == 2){ // Yen
                taxas.text = "121.04"
            } else if(toNumber == 3){ // Real
                taxas.text = "4.59"
            } else if(toNumber == 4){ //Dolar
                taxas.text = "1.12"
            } else {
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            }
            break
        case 2:
            fromNumber = 2 //pound
            if(toNumber == 0){ //Euros
                taxas.text = "1.12"
            } else if(toNumber == 1){ //Pound
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            } else if(toNumber == 2){ //Yen
                taxas.text = "140.77"
            } else if(toNumber == 3){ //Real
                taxas.text = "5.34"
            } else if(toNumber == 4){ //Dollar
                taxas.text = "1.30"
            } else {
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            }
            break
        case 3:
            fromNumber = 3 //yen
            if(toNumber == 0){ //Euros
                taxas.text = "0.0083"
            } else if(toNumber == 1){ //Pound
                taxas.text = "0.0071"
            } else if(toNumber == 2){ //Yen
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            } else if(toNumber == 3){ //Real
                taxas.text = "0.038"
            } else if(toNumber == 4){ //Dollar
                taxas.text = "0.0092"
            } else {
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            }
            break
        case 4:
            fromNumber = 4 //reais
            if(toNumber == 0){ //Euros
                taxas.text = "0.22"
            } else if(toNumber == 1){ //Pound
                taxas.text = "0.19"
            } else if(toNumber == 2){ //Yen
                taxas.text = "26.36"
            } else if(toNumber == 3){ //Real
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            } else if(toNumber == 4){ //Dollar
                taxas.text = "0.24"
            } else {
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            }
            break
        default:
            break
        }
    }
    
    
    @IBAction func convertTo(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            toNumber = 0 //euros
            break
        case 1:
            toNumber = 1 //pound
            break
        case 2:
            toNumber = 2 //yen
            break
        case 3:
            toNumber = 3 //reais
            break
        case 4:
            toNumber = 4 //dollar
            break
        default:
            break
        }
    }
    
    
    @IBAction func ConvertButton(_ sender: Any) {
        let num = Double(amount.text!)
        
        switch fromNumber {
        case 0: // Dollar
            if(toNumber == 0){ // Euros
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) USD is \(convertedValue) Euros"
            } else if(toNumber == 1){ // Pound
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) USD is \(convertedValue) English Pounds"
            } else if(toNumber == 2){ // Yen
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) USD is \(convertedValue) Yen"
            } else if(toNumber == 3){ // Real
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) USD is \(convertedValue) Brazilian Real"
            } else {
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            }
            break
        case 1: // Euros
            if(toNumber == 0){ // Euros
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            } else if(toNumber == 1){ //Pound
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Euros is \(convertedValue) English Pounds"
            } else if(toNumber == 2){ // Yen
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Euros is \(convertedValue) Yen"
            } else if(toNumber == 3){ // Real
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Euros is \(convertedValue) Brazilian Real"
            } else if(toNumber == 4){ //Dolar
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Euros is \(convertedValue) American Dollars"
            } else {
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            }
            break
        case 2: // Pound
            if(toNumber == 0){ //Euros
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) English Pounds is \(convertedValue) Euros"
            } else if(toNumber == 1){ //Pound
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            } else if(toNumber == 2){ //Yen
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) English Pounds is \(convertedValue) Yen"
            } else if(toNumber == 3){ //Real
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) English Pounds is \(convertedValue) Brazilian Real"
            } else if(toNumber == 4){ //Dollar
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) English Pounds is \(convertedValue) American Dollars"
            } else {
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            }
            break
        case 3: //Yen
            if(toNumber == 0){ //Euros
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Yen is \(convertedValue) Euros"
            } else if(toNumber == 1){ //Pound
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Yen is \(convertedValue) Euros"
            } else if(toNumber == 2){ //Yen
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            } else if(toNumber == 3){ //Real
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Yen is \(convertedValue) Brazilian Real"
            } else if(toNumber == 4){ //Dollar
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Yen is \(convertedValue) American Dollars"
            } else {
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            }
            break
        case 4: //Real
            if(toNumber == 0){ //Euros
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Brazilian Pounds is \(convertedValue) Euros"
            } else if(toNumber == 1){ //Pound
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Brazilian Pounds is \(convertedValue) Euros"
            } else if(toNumber == 2){ //Yen
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Brazilian Pounds is \(convertedValue) Yen"
            } else if(toNumber == 3){ //Real
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            } else if(toNumber == 4){ //Dollar
                let value = Double(taxas.text!)
                let convertedValue = Double(num!) * value!
                display.text = "\(num!) Brazilian Pounds is \(convertedValue) American Dollars"
            } else {
                display.text = "Can't convert... Try Again!"
                taxas.text = "Undefiened"
            }
            break
        default:
            break
        }
    }
    

}

