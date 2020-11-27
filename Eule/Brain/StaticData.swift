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
        goalType: "gym",
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
        goalType: "Yoga",
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
        goalName: "Meditate",
        goalTime: "25 Min",
        goalColor: "\(UIColor.white)",
        goalType: "Meditate",
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
        goalName: "Meditate",
        goalTime: "25 Min",
        goalColor: "\(UIColor.white)",
        goalType: "Meditate",
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
        goalType: "Meditate",
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
        colour: "\(Color.black)",
        bloodGroup: 1,
        phoneNo: "",
        req : "",
        UID : "",
        avatar : "String"
    )

let healthCardData: HealthCard =
    HealthCard(
        BloodGroup: "B+",
        DOB: "25/6/2000",
        InsuranceCompany: "Tata",
        Allergies: "586",
        FamilyCondition: "gd456",
        SmokingStatus: true,
        DrinkingStatus: false,
        Medication: "dh",
        Contact1: "5446854",
        Contact2: "324156",
        ContactName1: "Ross",
        ContactName2: "Mike"
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


let homeCard = [
    
    HomeCard(
        id: 0,
        image: "BackgroundImage",
        title: "Optamism helps you",
        link: "www.eule.in/static",
        desc: ""),
    HomeCard(
        id: 2,
        image: "BackgroundImage",
        title: "Optamism helps you",
        link: "www.eule.in/static",
        desc: ""),
    HomeCard(
        id: 3,
        image: "BackgroundImage",
        title: "Optamism helps you",
        link: "www.eule.in/static",
        desc: ""),
    HomeCard(
        id: 4,
        image: "BackgroundImage",
        title: "Optamism helps you",
        link: "www.eule.in/static",
        desc: ""),
    HomeCard(
        id: 5,
        image: "BackgroundImage",
        title: "Optamism helps you",
        link: "www.eule.in/static",
        desc: ""),
    
    HomeCard(
        id: 6,
        image: "BackgroundImage",
        title: "Optamism helps you",
        link: "www.eule.in/static",
        desc: ""),
    HomeCard(
        id: 7,
        image: "BackgroundImage",
        title: "Optamism helps you",
        link: "www.eule.in/static",
        desc: ""),
    HomeCard(
        id: 8,
        image: "BackgroundImage",
        title: "Optamism helps you",
        link: "www.eule.in/static",
        desc: ""),
    HomeCard(
        id: 9,
        image: "BackgroundImage",
        title: "Optamism helps you",
        link: "www.eule.in/static",
        desc: ""),
    HomeCard(
        id: 10,
        image: "BackgroundImage",
        title: "Optamism helps you",
        link: "www.eule.in/static",
        desc: "")
    
    
]
