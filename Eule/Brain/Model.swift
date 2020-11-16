//
//  Model.swift
//  Eule
//
//  Created by Hariom Palkar on 22/10/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//


import Foundation
import SwiftUI

struct Reminders: Identifiable, Codable{
    var id = UUID()
    var reminderName: String
    var reminderTime: String
    var cardColor: String
    var intakeTime: String
    var reminderType: String
}
struct Goals: Identifiable, Codable{
    var id = UUID()
    var goalName: String
    var goalTime: String
    var goalColor: String
    var goalType: String
    var foregroundColor: String
}

struct Report: Identifiable, Codable{
    var id = UUID()
    var name: String
    var time: String
    var Kind: String
}

struct Prescription : Identifiable, Codable{
    var id = UUID()
    var name: String
    var time: String
    var doctorName: String
    var date: String
    var kind: String
}

typealias Users = [User]

struct User: Codable {
    var name: String
    var euleID: String
    var color: String
    var profilePicture: String
    var coins: String
    var colour: String
    var bloodGroup: String
    var phoneNo: String
}

struct HealthCard: Codable {
    var BloodGroup : String
    var DOB : String
    var InsuranceCompany: String
    var Allergies : String
    var FamilyCondition : String
    var SmokingStatus : Bool
    var DrinkingStatus : Bool
    var Medication : String
    var Contact1 : String
    var Contact2 : String
}

struct Checkup: Identifiable, Codable {
    var id = UUID()
    var title : String
    var checkupType : String
    var DoctorsName: String
    var Date : String
    var Timing : String
    var RemindMeBefore : String
    var Note : String
}

struct Medicine: Identifiable, Codable {
    var id = UUID()
    var name : String
    var medicineType : String
    var Days: String
    var Consumptation : Int
    var Intake : String
    var MealAnnotation : String
}

struct Product : Identifiable, Decodable{
    var id = UUID()
    var name : String
    var desc : String
    var Company: String
    var ProductImage : Int
    var foregroundColor : String
    var tintColor : String
    var price : Int
    var productID : String
}


// TO FIX



struct HomeCard: Hashable, CustomStringConvertible {
    var id: Int
    
    
    let image: String
    let title: String
    let link: String
    let desc: String
    
    var description: String {
        return "\(link), id: \(id)"
    }
}

