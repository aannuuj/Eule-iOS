//
//  ReminderModel.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import SwiftUI

struct Reminders: Identifiable{
    var id = UUID()
    var reminderName: String
    var reminderTime: String
    var cardColor: UIColor
    var intakeTime: String
    var reminderType: String
    var foregroundColor: Color
}
struct Goals: Identifiable{
    var id = UUID()
    var goalName: String
    var goalTime: String
    var goalColor: UIColor
    var goalType: String
    var foregroundColor: Color
}

struct Report: Identifiable{
    var id = UUID()
    var reportName: String
    var reportTime: String
    var reportColor: UIColor
    var reportType: String
    var foregroundColor: Color
}

