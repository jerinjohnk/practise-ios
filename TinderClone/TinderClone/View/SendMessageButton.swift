//
//  SendMessageButton.swift
//  TinderClone
//
//  Created by Jerin John K on 29/08/20.
//  Copyright © 2020 Jerin John K. All rights reserved.
//

import UIKit

class SendMessageButton: UIButton {
    override func draw(_ rect: CGRect) {
        super.draw(rect)

        let gradientLayer = CAGradientLayer()
        let rightColor = #colorLiteral(red: 0.5058823824, green: 0.3372549117, blue: 0.06666667014, alpha: 1)
        let leftColor = #colorLiteral(red: 0.8156862745, green: 0.6588235294, blue: 0.3647058824, alpha: 1)

        gradientLayer.colors = [leftColor.cgColor, rightColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0.5)
        gradientLayer.endPoint = CGPoint(x: 1, y: 0.5)

        self.layer.insertSublayer(gradientLayer, at: 0)

        layer.cornerRadius = rect.height / 2
        clipsToBounds = true

        gradientLayer.frame = rect
    }
}
