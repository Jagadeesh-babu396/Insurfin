//
//  Onboarding Model.swift
//  Insurfin
//
//  Created by Jagadeesh on 15/02/23.
//

import UIKit

struct OnboardingSlide {

    let title: String
    let description: String

    
}

struct PermanetModel {
    
    let namelabel: String
    let placholderName: String
    let headlineName: String
}


struct KYCVerification {
    
    let title: String
    let placeholder: String
    let adhaarname: String
    let adhaarback: String
    
}

class Model {
    var title: String
    
    let nametitle:[String]
    let placeholder:[String]
    init(title: String, nametitle: [String], placeholder: [String]) {
        self.title = title
        self.nametitle = nametitle
        self.placeholder = placeholder
    }
    
    }
