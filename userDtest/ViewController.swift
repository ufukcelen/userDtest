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
        
        let storedName = UserDefaults.standard.object(forKey: "nKey")
        let storedbirthDay = UserDefaults.standard.object(forKey: "bKey")
        
        if let newName = storedName as? String{
            nameLabel.text = newName
        }
        
        if let newBirthDay = storedbirthDay as? String{
            birthDayLabel.text = newBirthDay
        }
    
    }

  
    
    
    
    
    
    @IBAction func saveClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.set(nameTextField.text, forKey: "nKey")
        let storedBirthDay = UserDefaults.standard.set(nameTextField.text, forKey: "bKey")
        
        nameLabel.text = nameTextField.text
        birthDayLabel.text = birthDayTextField.text
    }
    
    
    @IBAction func deleteClicked(_ sender: Any) {
        
        let storedName = UserDefaults.standard.object(forKey: "nKey")
        let storedbirthDay = UserDefaults.standard.object(forKey: "bKey")
        
        if (storedName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "nKey")
            nameLabel.text = ""
            
        }
        
        if (storedbirthDay as? String) != nil {
            
            UserDefaults.standard.removeObject(forKey: "bKey")
            birthDayLabel.text = ""
            
            
        }
        
        
    }
    
    
    
    
    
    
    

}

