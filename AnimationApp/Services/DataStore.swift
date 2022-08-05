//
//  DataStore.swift
//  AnimationApp
//
//  Created by Владимир Фалин on 05.08.2022.
//

import SpringAnimation

struct DataStore {
    static let shared = DataStore()
    
    var preset: String {
        AnimationPreset.allCases.randomElement()?.rawValue ?? "wobble"
    }

    var curve: String {
        AnimationCurve.allCases.randomElement()?.rawValue ?? "easeIn"
    }
    
    var force: Double {
        Double.random(in: 1...2)
    }
    
    var duration: Double {
        Double.random(in: 0.5...1.5)
    }
    
    var delay: Double {
        Double.random(in: 0...1)
    }
    
    private init() {}
}
