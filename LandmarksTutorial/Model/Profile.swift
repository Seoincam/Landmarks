//
//  Profile.swift
//  LandmarksTutorial
//
//  Created by 박서인 on 9/2/25.
//

import Foundation

struct Profile {
    var username: String
    var prefersNotification = true
    var seasonalPhoto: Season = .winter
    var goalDate = Date()
    
    static let `default` = Profile(username: "seoincam")
    
    enum Season: String, CaseIterable, Identifiable {
        case spring = "🌷"
        case summer = "🌞"
        case autumn = "🍂"
        case winter = "☃️"
        
        var id: String { rawValue }
    }
    
}
