//
//  TextField.swift
//  TTDLogin
//
//  Created by Nathaniel Whittington on 2/10/22.
//

import Foundation


struct Text {
    var arr = ""
    
    func validateTextFieldIsEmpty(text:String?)->Bool{
        
        guard let text = text, !text.isEmpty else {
            return false
        }
        return true
    }
    
    
    func validateTextFieldCount(text:String?)->Bool{
        
        guard let text = text else {
            return false
        }
        
        
        if text.count < 7 {
            return false
        }else{
            return true
            
        }
    
    }
}
