//
//  ReminderList.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import SwiftUI

let reminderList: [Reminders] = [
    Reminders(reminderName: "Hitgym", reminderTime: "10:10", cardColor: UIColor.EuleGreen, intakeTime: "Day", reminderType: "Workout", foregroundColor: Color.white),
    Reminders(reminderName: "2L Water", reminderTime: "10:10", cardColor: UIColor.white, intakeTime: "Night", reminderType: "Water", foregroundColor: Color.black),
    Reminders(reminderName: "Crosine", reminderTime: "10:10", cardColor: UIColor.white, intakeTime: "PreMeal", reminderType: "Run", foregroundColor: Color.black),
    Reminders(reminderName: "Crosine", reminderTime: "10:10", cardColor: UIColor.white, intakeTime: "PostMeal", reminderType: "Steps", foregroundColor: Color.black),
    Reminders(reminderName: "Crosine", reminderTime: "10:10", cardColor: UIColor.white, intakeTime: "Day", reminderType: "Workout", foregroundColor: Color.black)
]
let goalsList: [Goals] = [
    Goals(goalName: "gym", goalTime: "15 Min", goalColor: UIColor.EuleGreen,  goalType: "Gym", foregroundColor: Color.white),
    Goals(goalName: "Run", goalTime: "25 Min", goalColor: UIColor.white,  goalType: "Run", foregroundColor: Color.black),
    Goals(goalName: "Yoga", goalTime: "25 Min", goalColor: UIColor.white, goalType: "Yoga", foregroundColor: Color.black),
    Goals(goalName: "2000cl", goalTime: "", goalColor: UIColor.white, goalType: "Food", foregroundColor: Color.black),
    Goals(goalName: "Meditate", goalTime: "25 Min", goalColor: UIColor.white,  goalType: "Meditate", foregroundColor: Color.black),
    Goals(goalName: "Sleep", goalTime: "7 HRs", goalColor: UIColor.white, goalType: "Sleep", foregroundColor: Color.black)
]
//let reportsList: [LabReports] = [
//    Goals(goalName: "gym", goalTime: "15 Min", goalColor: UIColor.EuleGreen,  goalType: "Gym", foregroundColor: Color.white),
//    Goals(goalName: "Run", goalTime: "25 Min", goalColor: UIColor.white,  goalType: "Run", foregroundColor: Color.black),
//    Goals(goalName: "Yoga", goalTime: "25 Min", goalColor: UIColor.white, goalType: "Yoga", foregroundColor: Color.black),
//    Goals(goalName: "2000cl", goalTime: "", goalColor: UIColor.white, goalType: "Food", foregroundColor: Color.black),
//    Goals(goalName: "Meditate", goalTime: "25 Min", goalColor: UIColor.white,  goalType: "Meditate", foregroundColor: Color.black),
//    Goals(goalName: "Sleep", goalTime: "7 HRs", goalColor: UIColor.white, goalType: "Sleep", foregroundColor: Color.black)
//]
