//
//  StaticData.swift
//  Eule
//
//  Created by Hariom Palkar on 22/10/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import Foundation
import SwiftUI

let reminderList = [
    Reminders(
        reminderName: "Hitgym",
        reminderTime: "10:10",
        cardColor: "\(UIColor.EuleGreen)",
        intakeTime: "Day",
        reminderType: "Workout"
    ),
    Reminders(
        reminderName: "2L Water",
        reminderTime: "10:10",
        cardColor: "\(UIColor.white)",
        intakeTime: "Night",
        reminderType: "Water"
    ),
    Reminders(
        reminderName: "Crosine",
        reminderTime: "10:10",
        cardColor: "\(UIColor.white)",
        intakeTime: "PreMeal",
        reminderType: "Run"
    ),
    Reminders(
        reminderName: "Crosine",
        reminderTime: "10:10",
        cardColor: "\(UIColor.white)",
        intakeTime: "PostMeal",
        reminderType: "Steps"
    ),
    Reminders(
        reminderName: "Crosine",
        reminderTime: "10:10",
        cardColor: "\(UIColor.white)",
        intakeTime: "Day",
        reminderType: "Workout"
    )
]
let goalsList = [
    Goals(
        goalName: "gym",
        goalTime: "15 Min",
        goalColor: "\(UIColor.EuleGreen)",
        goalType: "Gym",
        foregroundColor: "\(Color.white)"
    ),
    Goals(
        goalName: "Run",
        goalTime: "25 Min",
        goalColor: "\(UIColor.white)",
        goalType: "Run",
        foregroundColor: "\(Color.black)"
    ),
    Goals(
        goalName: "Yoga",
        goalTime: "25 Min",
        goalColor:"\( UIColor.white)",
        goalType: "Yoga",
        foregroundColor: "\(Color.black)"
    ),
    Goals(
        goalName: "2000cl",
        goalTime: "",
        goalColor: "\(UIColor.white)",
        goalType: "Food",
        foregroundColor: "\(Color.black)"
    ),
    Goals(
        goalName: "Meditate",
        goalTime: "25 Min",
        goalColor: "\(UIColor.white)",
        goalType: "Meditate",
        foregroundColor: "\(Color.black)"
    ),
    Goals(
        goalName: "Sleep",
        goalTime: "7 HRs",
        goalColor: "\(UIColor.white)",
        goalType: "Sleep",
        foregroundColor: "\(Color.black)"
    )
]

let userData: User =
    User(
        name: "John Snow",
        euleID: "eule1526364",
        color: "\(UIColor.orange)",
        profilePicture: "User.Image",
        coins: "5682",
        colour: "\(Color.black)"
    )

let healthCardData: Healthcard =
    Healthcard(
        BloodGroup: "B+",
        DOB: "25/6/2000",
        InsuranceCompany: "Tata",
        Allergies: "586",
        FamilyCondition: "gd456",
        SmokingStatus: "gfd",
        DrinkingStatus: "dfgh",
        Medication: "dh",
        Contact1: "5446854",
        Contact2: "324156"
    )

let prescriptionData = [
    Prescription(
        name: "Emergancy",
        time: "5:20",
        doctorName: "",
        date: "5/6/2020",
        kind: "52"
    ),
    
    Prescription(
        name: "Emergancy",
        time: "5:20",
        doctorName: "",
        date: "5/6/2020",
        kind: "52"
    ),
    
    Prescription(
        name: "Emergancy",
        time: "5:20",
        doctorName: "",
        date: "5/6/2020",
        kind: "52"),
    
    Prescription(
        name: "Emergancy",
        time: "5:20",
        doctorName: "",
        date: "5/6/2020",
        kind: "52"),
    
    Prescription(
        name: "Emergancy",
        time: "5:20",
        doctorName: "",
        date: "5/6/2020",
        kind: "52"
    ),
    
    Prescription(
        name: "Emergancy",
        time: "5:20",
        doctorName: "",
        date: "5/6/2020",
        kind: "52"
    ),
    
    Prescription(
        name: "Emergancy",
        time: "5:20",
        doctorName: "",
        date: "5/6/2020",
        kind: "52"
    ),
    
    Prescription(
        name: "Emergancy",
        time: "5:20",
        doctorName: "",
        date: "5/6/2020",
        kind: "52"
    ),
    
    Prescription(
        name: "Emergancy",
        time: "5:20",
        doctorName: "",
        date: "5/6/2020",
        kind: "52"
    ),
    
    Prescription(
        name: "Emergancy",
        time: "5:20",
        doctorName: "",
        date: "5/6/2020",
        kind: "52"
    )
]
let reportData = [
    Report(
        name: "Eye Scan",
        time: "12:12",
        Kind: "Eye"
    ),
    Report(
        name: "Eye Scan",
        time: "12:12",
        Kind: "Eye"
    ),
    
    Report(
        name: "Eye Scan",
        time: "12:12",
        Kind: "Eye"
    ),
    
    Report(
        name: "Eye Scan",
        time: "12:12",
        Kind: "Eye"
    )
]
let card = [
    HomeCard(
        image: "BackgroundImage",
        title: "Optamism helps you",
        desc: "Some some some somesdjakfhg dasfsdnfjge fedkhgfkj",
        link: "www.eule.in/static"
    )
]
