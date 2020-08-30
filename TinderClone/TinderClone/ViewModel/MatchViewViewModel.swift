//
//  MatchViewViewModel.swift
//  TinderClone
//
//  Created by Jerin John K on 29/08/20.
//  Copyright © 2020 Jerin John K. All rights reserved.
//

import Foundation

struct MatchViewViewModel {
    private let currentUser: User
    let matchedUser: User
    
    let matchLabelText: String
    
    var currentUserImageURL: URL?
    var matchedUserImageURL: URL?
    
    init(currentUser: User, matchedUser: User) {
        self.currentUser = currentUser
        self.matchedUser = matchedUser
        
        matchLabelText = "You and \(matchedUser.name) have liked each other!"
        
        guard let currentImageUrlString = currentUser.imageURLs.first else {return}
        guard let matchedImageUrlString = matchedUser.imageURLs.first else {return}
        
        currentUserImageURL = URL(string: currentImageUrlString)
        matchedUserImageURL = URL(string: matchedImageUrlString)
    }
}
