//
//  ViewController.swift
//  userDtest
//
//  Created by Ufuk Celen on 4.08.2021.
//

import UIKit

class ViewController: UIViewController {

  
    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var birthDayTextField: UITextField!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var birthDayLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       
        
        
        
        
    }

  
    
    
    
    
    
    @IBAction func saveClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.setValue(nameTextField.text, forKey: "nameKey")
        let storedBirthDay = UserDefaults.setValue(birthDayTextField.text, forKey: "birthDayKey")
        
        nameLabel.text = nameTextField.text!
        birthDayLabel.text = birthDayTextField.text!
    }
    
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        
        
        
    }
    
    
    
    
    
    
    

}

