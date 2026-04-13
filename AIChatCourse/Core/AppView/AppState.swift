//
//  AppState.swift
//  AIChatCourse
//
//  Created by leila on 13.04.26.
//

import SwiftUI

@Observable
class AppState {
    private(set) var showTabBar: Bool {
        didSet {
            UserDefaults.showTabBarView = showTabBar
        }
    }
    
    init(showTabBar: Bool = UserDefaults.standard.bool(forKey: "showTabbarView")) {
        self.showTabBar = showTabBar
    }
    
    func updateViewState(showTabBarView: Bool) {
        showTabBar = showTabBarView
    }
}

extension UserDefaults {
    
    private struct Keys {
        static let showTabBarView = "showTabbarView"
    }
    
    static var showTabBarView: Bool {
        get {
            standard.bool(forKey: Keys.showTabBarView)
        }
        
        set {
            standard.set(newValue, forKey: Keys.showTabBarView)
        }
    }
}
