//
//  MatchCellViewModel.swift
//  TinderClone
//
//  Created by Jerin John K on 30/08/20.
//  Copyright © 2020 Jerin John K. All rights reserved.
//

import Foundation

struct MatchCellViewModel {
    
    let nameText: String
    var profileImageUrl: URL?
    let uid: String
    
    init(match: Match) {
        nameText = match.name
        profileImageUrl = URL(string: match.profileImageUrl)
        uid = match.uid
    }
}
