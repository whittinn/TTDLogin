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
        
       
        let userPass = vm.validateTextFieldIsEmpty(text: userTField.text)
        let userText = vm.validateTextFieldCount(text: userTField.text)
        
        
        if userPass && userText == true {
            let st = UIStoryboard(name: "Main", bundle: nil)
            guard let vc = st.instantiateViewController(identifier: "NewViewController") as? NewViewController else {
                return
            }
            present(vc, animated: true, completion: nil)
        }else{
            
            let alert = UIAlertController(title: "Warning", message: "You are missing creiteria", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Ok", style: .default, handler: nil))
            present(alert, animated: true, completion: nil)
            
        }
      
    }
    
                
    
}

