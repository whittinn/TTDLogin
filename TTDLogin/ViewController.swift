//
//  ViewController.swift
//  TTDLogin
//
//  Created by Nathaniel Whittington on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var userTField: UITextField!
    var vm = Text()
    @IBOutlet weak var passwordTField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func userButtonTapped(_ sender: UIButton) {
        
        
        do {
              let userNameEmpty = try vm.validateTextFieldIsEmpty(text: userTField.text)
            let userNameCount = try vm.validateTextFieldCount(text: userTField.text)
            let passwordTextCount = try vm.validateTextFieldCount(text: passwordTField.text)
            let passwordTextEmpty = try vm.validateTextFieldIsEmpty(text: passwordTField.text)
            
            if userNameEmpty && (userNameCount != nil) && (passwordTextCount != nil) && passwordTextEmpty == true {
                let st = UIStoryboard(name: "Main", bundle: nil)
                guard let vc = st.instantiateViewController(identifier: "NewViewController") as? NewViewController else {
                    return
                }
                present(vc, animated: true, completion: nil)
                
            
            }
            
            
        } catch  TextFieldErrors.NoText{
            let alert = UIAlertController(title: "Warning", message: "You are missing creiteria", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
            print("No item in textfield." )
     
        }catch TextFieldErrors.NotEnoughLetters{
            let alert = UIAlertController(title: "Warning", message: "You are missing creiteria", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
            print("not enough letters.")
        }catch {
            let alert = UIAlertController(title: "Warning", message: "You are missing creiteria", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
       

      
    }
    
                
    
}

