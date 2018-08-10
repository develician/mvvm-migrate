//
//  CourseViewModel.swift
//  MvvmMigrate
//
//  Created by killi8n on 2018. 7. 23..
//  Copyright © 2018년 killi8n. All rights reserved.
//

import Foundation
import UIKit

struct CourseViewModel {
    let name: String
    
    let detailTextString: String
    let accessoryType: UITableViewCellAccessoryType
    
    init(course: Course) {
        self.name = course.name
        
        if course.number_of_lessons > 35 {
            detailTextString = "Lessons 30+ Check it Out!"
            accessoryType = .detailDisclosureButton
        } else {
            detailTextString = "Lessons: \(course.number_of_lessons)"
            accessoryType = .none
        }
    }
}
