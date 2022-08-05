//
//  Animation.swift
//  AnimationApp
//
//  Created by Владимир Фалин on 05.08.2022.
//

struct Animation {
    var preset: String {
        DataStore.shared.preset
    }
    
    var curve: String {
        DataStore.shared.curve
    }
    
    var force: Double {
        DataStore.shared.force
    }
    
    var duration: Double {
        DataStore.shared.duration
    }
    
    var delay: Double {
        DataStore.shared.delay
    }
}
