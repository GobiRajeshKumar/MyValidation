//
//  Validation.swift
//  MyValidation
//
//  Created by Rajesh Kumar on 28/09/22.
//

import Foundation

public class MyValidation {
    
    public init() { }
    
    public static func isValidPhoneNumber(_ number: String) -> Bool {
        let set = CharacterSet(charactersIn: number)
        guard CharacterSet.decimalDigits.isSuperset(of: set) && number.count == 10 else { return false }
        return true
    }
    
    public static func isValidEmail(_ email: String) -> Bool {
        let reqularExpression = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"
        let predicate = NSPredicate(format: "SELF MATCHES %@", reqularExpression)
        if predicate.evaluate(with: email)
        {
            return true
        }
        return false
    }
    
    public static func isValidName(_ name:String) -> Bool {
        let RegEx = "\\w{4,18}"
        let Test = NSPredicate(format:"SELF MATCHES %@", RegEx)
        return Test.evaluate(with: name)
    }
}
