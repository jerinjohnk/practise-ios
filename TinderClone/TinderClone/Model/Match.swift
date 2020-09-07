//
//  Match.swift
//  TinderClone
//
//  Created by Jerin John K on 29/08/20.
//  Copyright © 2020 Jerin John K. All rights reserved.
//

import Foundation

struct Match {
    let name: String
    let uid: String
    let profileImageUrl: String

    init(dictionary: [String: Any]) {
        self.name = dictionary["name"] as? String ?? ""
        self.profileImageUrl = dictionary["profileImageUrl"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""

    }
}
