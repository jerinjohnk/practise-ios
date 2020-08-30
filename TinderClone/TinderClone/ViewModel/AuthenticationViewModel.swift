//
//  AuthenticationViewModel.swift
//  TinderClone
//
//  Created by Jerin John K on 05/08/20.
//  Copyright © 2020 Jerin John K. All rights reserved.
//

import Foundation

protocol AuthenticationViewModel {
    var isFormValid: Bool { get }
}

struct LoginViewModel: AuthenticationViewModel {
    var email: String?
    var password: String?
    
    var isFormValid: Bool {
        return email?.isEmpty == false
            && password?.isEmpty == false
    }
}

struct RegistrationViewModel: AuthenticationViewModel {
    var email: String?
    var fullName: String?
    var password: String?
    
    var isFormValid: Bool {
        return email?.isEmpty == false
            && fullName?.isEmpty == false
            && password?.isEmpty == false
    }
    
}
