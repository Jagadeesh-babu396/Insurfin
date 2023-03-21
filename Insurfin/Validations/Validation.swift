//
//  Validation.swift
//  Insurfin
//
//  Created by Jagadeesh on 23/02/23.
//

import Foundation
import UIKit

class Validation:NSObject {
    
    func isValidPhone(phone: String) -> Bool {
        let phoneRegex = "^[0-9]\\d{9}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", phoneRegex)
        return phoneTest.evaluate(with: phone)
    }

    
}

