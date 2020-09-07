//
//  User.swift
//  TinderClone
//
//  Created by Jerin John K on 05/08/20.
//  Copyright © 2020 Jerin John K. All rights reserved.
//

import UIKit

struct User {
    var name: String
    var age: Int
    var email: String
    let uid: String
    var imageURLs: [String]

    var profession: String
    var bio: String
    var minSeekingAge: Int
    var maxSeekingAge: Int

    init(dictionary: [String: Any]) {
        self.name = dictionary["fullname"] as? String ?? ""
        self.age = dictionary["age"] as? Int ?? 0
        self.email = dictionary["email"] as? String ?? ""
        self.uid = dictionary["uid"] as? String ?? ""
        self.imageURLs = dictionary["imageURLs"] as? [String] ?? [String]()

        self.profession = dictionary["profession"] as? String ?? ""
        self.bio = dictionary["bio"] as? String ?? ""
        self.minSeekingAge = dictionary["minSeekingAge"] as? Int ?? 18
        self.maxSeekingAge = dictionary["maxSeekingAge"] as? Int ?? 60

    }
}
