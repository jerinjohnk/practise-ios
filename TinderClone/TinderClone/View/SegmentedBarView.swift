//
//  SegmentedBarView.swift
//  TinderClone
//
//  Created by Jerin John K on 28/08/20.
//  Copyright © 2020 Jerin John K. All rights reserved.
//

import UIKit

class SegmentedBarView: UIStackView {
    
    init(numberOfSegments: Int) {
        super.init(frame: .zero)
        
        (0..<numberOfSegments).forEach { _ in
            let barView = UIView()
            barView.backgroundColor = .barDeselectedColor
            addArrangedSubview(barView)
        }
        
        spacing = 4
        distribution = .fillEqually
        arrangedSubviews.first?.backgroundColor = .white
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Helpers
    
    func setHiglighted(index: Int) {
        arrangedSubviews.forEach({ $0.backgroundColor = .barDeselectedColor })
        arrangedSubviews[index].backgroundColor = .white
    }
}
