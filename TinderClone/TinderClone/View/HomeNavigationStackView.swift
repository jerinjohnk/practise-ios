//
//  HomeNavigationStackView.swift
//  TinderClone
//
//  Created by Jerin John K on 03/08/20.
//  Copyright © 2020 Jerin John K. All rights reserved.
//

import UIKit

protocol HomeNavigationStackViewDelegate: class {
    func showSettings()
    func showMessages()
}

class HomeNavigationStackView: UIStackView {

    // MARK: - Properties

    weak var delegate: HomeNavigationStackViewDelegate?
    let settingsButton = UIButton(type: .system)
    let messageButton = UIButton(type: .system)
    let tinderIcon = UIImageView(image: #imageLiteral(resourceName: "app_icon"))

    // MARK: - LIfecycle

    override init(frame: CGRect) {
        super .init(frame: frame)
        heightAnchor.constraint(equalToConstant: 80).isActive = true
        tinderIcon.contentMode = .scaleAspectFit
        distribution =  .fillEqually

        settingsButton.setImage(#imageLiteral(resourceName: "top_left_profile").withRenderingMode(.alwaysOriginal), for: .normal)
        messageButton.setImage(#imageLiteral(resourceName: "top_messages_icon").withRenderingMode(.alwaysOriginal), for: .normal)

        [settingsButton, UIView(), tinderIcon, UIView(), messageButton].forEach { (view) in
            addArrangedSubview(view)
        }

        distribution = .equalSpacing
        isLayoutMarginsRelativeArrangement = true
        layoutMargins = .init(top: 0, left: 16, bottom: 10, right: 16)

        messageButton.addTarget(self, action: #selector(handleShowMessages), for: .touchUpInside)
        settingsButton.addTarget(self, action: #selector(handleShowSettings), for: .touchUpInside)
    }

    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    // MARK: - Actions
    @objc func handleShowMessages() {
        delegate?.showMessages()
    }

    @objc func handleShowSettings() {
        delegate?.showSettings()
    }
}
