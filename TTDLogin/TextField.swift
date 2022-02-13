//
//  TextField.swift
//  TTDLogin
//
//  Created by Nathaniel Whittington on 2/10/22.
//

import Foundation

enum TextFieldErrors : String, Error {
    case NoText
    case NotEnoughLetters
}


struct Text {
    var arr = ""
    
    func validateTextFieldIsEmpty(text:String?)throws->Bool{
        
        guard let text = text, !text.isEmpty else {
            throw TextFieldErrors.NoText
        }
        return true
    }
    
    
    func validateTextFieldCount(text:String?)throws->Bool?{
        
        guard let text = text else {
            return false
        }
        
        
        if text.count < 7 {
            throw TextFieldErrors.NotEnoughLetters
        }else{
            return true
            
        }
    
    }
}
