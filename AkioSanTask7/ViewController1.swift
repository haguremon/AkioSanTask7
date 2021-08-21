//
//  ViewController.swift
//  AkioSanTask7
//
//  Created by IwasakIYuta on 2021/08/18.
//

import UIKit

class ViewController1: UIViewController {
    
    @IBOutlet private var textField1: UITextField!    
    @IBOutlet private var textField2: UITextField!
    
    @IBOutlet private var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        setUpView1()
        
    }
    
    private func setUpView1(){
        
        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad
        
        view.backgroundColor = .init(red: 225/255,
                                     green: 100/255,
                                     blue: 100/255,
                                     alpha: 1)
        
    }
    @IBAction private func addUpButton(_ sender: UIButton) {
        
        view.endEditing(true)
        
        let number1 = Int(textField1.text!) ?? 0
        let number2 = Int(textField2.text!) ?? 0
        
        let result = number1 + number2
        
        resultLabel.text = String(result)
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        view.endEditing(true)
        
    }
    
    
}



