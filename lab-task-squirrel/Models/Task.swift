//
//  Task.swift
//  lab-task-squirrel
//
//  Created by Cesar Borroto on 02/14/2023.
//

import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local restaurant 🍲",
                 description: "Where do you go if your hungry?"),
            Task(title: "Your favorite local cafe ☕",
                 description: "Cup of coffee?"),
            Task(title: "Your favorite hiking spot 🏞️",
                 description: "Feeling adventurous?")
        ]
    }
}
