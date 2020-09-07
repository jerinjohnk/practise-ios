//
//  AuthButton.swift
//  TinderClone
//
//  Created by Jerin John K on 05/08/20.
//  Copyright © 2020 Jerin John K. All rights reserved.
//

import UIKit

class AuthButton: UIButton {

    override init(frame: CGRect) {
        super.init(frame: frame)

        backgroundColor = #colorLiteral(red: 0.8156862745, green: 0.6588235294, blue: 0.3647058824, alpha: 1)
        layer.cornerRadius = 5
        heightAnchor.constraint(equalToConstant: 50).isActive = true
        isEnabled = false
        setTitleColor(.white, for: .normal)
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
