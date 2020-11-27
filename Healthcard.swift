//
//  Healthcard.swift
//  Eule
//
//  Created by Hariom Palkar on 11/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct Healthcard: View {
    public var selectedArray = [ "A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB+"]
    
    @State var user: User = userData
    @State public var InsuranceCompany = ""
    @State public var Allergies = ""
    @State public var FamilyCondition = ""
    @State public var PersonalCondition = ""
    @State public var SmokingStatus : Bool = false
    @State public var DrinkingStatus : Bool = false
    @State public var Medication = ""
    @State public var Contact1 = ""
    @State public var Contact2 = ""
    @State public var ContactName1 = ""
    @State public var ContactName2 = ""
    
    var body: some View {
        
        VStack{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                ScrollView( showsIndicators: false){
                    VStack{
                        ZStack{
                            Text("Healthcard layout")
//                            Image("")
                        }
                        .frame(width: (UIScreen.main.bounds.width - 32), height: (UIScreen.main.bounds.height/4) )
                        .background(LinearGradient.BackgroundGradient)
                        .opacity(50)
                        .cornerRadius(15)
                        
                        VStack(alignment: .leading, spacing: 20){
                            HealthCardHeaderView(title: "Personal Details")
                            HStack(alignment: .center, spacing: 10){
                                CustomForm{
                                    CustomSection(header:Text("Blood Group") )  {
                                        VStack {
                                            PickerTextField(data: selectedArray, placeholder: "Select Item", lastSelectedIndex: self.$user.bloodGroup)
                                                .accentColor(.EuleBlue)
                                        }
                                    }
                                }
                                CustomForm{
                                    CustomSection(header:Text("Date of Birth"))  {
                                        VStack {
                                            DatePicker("", selection: $user.dob, displayedComponents: .date)
                                                .datePickerStyle(CompactDatePickerStyle())
                                                .padding(.trailing, 60)
                                        }
                                    }
                                }
                            }
                            CustomForm{
                                CustomSection(header:Text("Insuarance Company"))  {
                                    VStack {
                                        TextField("Ex: SBI Life", text: $InsuranceCompany)
                                    }
                                }
                            }
                            CustomForm{
                                CustomSection(header:Text("Allergies"))  {
                                    VStack {
                                        HStack{
                                            TextField("Enter Details", text: $Allergies)
                                            Image("Add")
                                                .padding(.all)
                                        }
                                    }
                                }
                            }
                        }
                        // medical documents
                        VStack(alignment: .leading, spacing: 10){
                            HealthCardHeaderView(title: "Medical Documents")
                            CustomForm{
                                CustomSection(header:Text("Familty Conditions"))  {
                                    VStack {
                                        TextField("Personal Conditions", text: $FamilyCondition)
                                            .keyboardType(.namePhonePad)
                                    }
                                }
                            }
                            CustomForm{
                                CustomSection(header:Text("Personal Conditions"))  {
                                    VStack {
                                        HStack{
                                            TextField("Enter Details", text: $PersonalCondition)
                                                .keyboardType(.namePhonePad)
                                            Image("Add")
                                                .padding(.all)
                                        }
                                    }
                                }
                            }
                            // add switch
                            HStack(alignment: .center, spacing: 10){
                                CustomForm{
                                    CustomSection(header:Text("Smoking Status"))  {
                                        VStack(alignment: .leading) {
                                            Toggle(isOn: $SmokingStatus) {
                                            }
                                            .padding()
                                            .foregroundColor(.EuleGreen)
                                            .toggleStyle(SwitchToggleStyle())
                                        }
                                    }
                                }
                                CustomForm{
                                    CustomSection(header: Text("Drinking Status"))  {
                                        VStack(alignment: .leading) {
                                            Toggle(isOn: $DrinkingStatus) {
                                            }
                                            .padding()
                                            .foregroundColor(.EuleGreen)
                                            .toggleStyle(SwitchToggleStyle())
                                        }
                                    }
                                }

                            }
                            CustomForm{
                                CustomSection(header:Text("Current Medications"))  {
                                    VStack {
                                        HStack{
                                            TextField("Enter Details", text: $Medication)
                                            Image("Add")
                                                .padding(.all)
                                        }
                                    }
                                }
                            }
                            HealthCardHeaderView(title: "Emergancy Contacts")
                            CustomForm{
                                CustomSection(header:Text("Primary"))  {
                                    VStack {
                                        TextField("Name", text: $ContactName1)
                                            .keyboardType(.numberPad)
                                        TextField("Number", text: $Contact1)
                                            .keyboardType(.numberPad)
                                    }
                                }
                            }
                            CustomForm{
                                CustomSection(header:Text("Secondary"))  {
                                    VStack {
                                        TextField("Name", text: $ContactName2)
                                            .keyboardType(.numberPad)
                                        TextField("Number", text: $Contact2)
                                            .keyboardType(.numberPad)
                                    }
                                }
                            }
                        }
                        
                        .padding(.top, 20)
                        
                        Button(action: {}){
                            Text("Save")
                        }
                        .buttonStyle(EuleGreenButton())
                    }
                    .padding(.init(top: 20, leading: 16, bottom: 10, trailing: 16))
                }
            }
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}


struct Healthcard_Previews: PreviewProvider {
    static var previews: some View {
        Healthcard()
    }
}
