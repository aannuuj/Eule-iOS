//
//  Healthcard.swift
//  Eule
//
//  Created by Hariom Palkar on 11/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct Healthcard: View {
    @State public var BloodGroup = ""
    @State public var DOB = ""
    @State public var InsuranceCompany = ""
    @State public var Allergies = ""
     @State public var FamilyCondition = ""
     @State public var SmokingStatus = ""
     @State public var DrinkingStatus = ""
     @State public var Medication = ""
     @State public var Contact1 = ""
     @State public var Contact2 = ""
    var body: some View {
        
        VStack{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                ScrollView( showsIndicators: false){
                    VStack{
                        ZStack{
                            Text("Healthcard layout")
                            Image("")
                            
                        }.frame(width: (UIScreen.main.bounds.width - 32), height: (UIScreen.main.bounds.height/4) )
                            .background(Color(.gray))
                            .opacity(50)
                            .cornerRadius(15)
                        
                        VStack(alignment: .leading, spacing: 10){
                            
                            Text("Personal Details")
                                .font(.EuleLabel)
                                .foregroundColor(.black)
                            
                            HStack(alignment: .center, spacing: 10){
                                CustomForm{
                                    CustomSection(header:
                                        Text("Blood Group")
                                            .font(.EuleTitle)
                                            .foregroundColor(.secondary)
                                            .padding(.all)
                                    )  {
                                        VStack {
                                            TextField("B+", text: $BloodGroup)
                                                .accentColor(Color.gray)
                                                .keyboardType(.namePhonePad)
                                                .foregroundColor(.EuleGreen)
                                                .font(.EuleLabel)
                                                .padding(.leading, 15)
                                        }
                                    }
                                } .background(Color.white)
                                    .cornerRadius(12)
                                CustomForm{
                                    CustomSection(header:
                                        Text("Date of Birth")
                                            .font(.EuleTitle)
                                            .foregroundColor(.secondary)
                                            .padding(.all)
                                    )  {
                                        VStack {
                                            TextField("01/01/1997", text: $DOB)
                                                .accentColor(Color.gray)
                                                .keyboardType(.namePhonePad)
                                                .foregroundColor(.EuleGreen)
                                                .font(.EuleLabel)
                                                .padding(.leading, 15)
                                        }
                                    }
                                }
                                .background(Color.white)
                                .cornerRadius(12)
                            }
                            CustomForm{
                                CustomSection(header:
                                    Text("Insuarance Company")
                                        .font(.EuleTitle)
                                        .foregroundColor(.secondary)
                                        .padding(.all)
                                )  {
                                    VStack {
                                        TextField("Ex: SBI Life", text: $InsuranceCompany)
                                            .accentColor(Color.gray)
                                            .keyboardType(.namePhonePad)
                                            .foregroundColor(.EuleGreen)
                                            .font(.EuleLabel)
                                            .padding(.leading, 15)
                                        
                                    }
                                }
                            }
                            .background(Color.white)
                            .cornerRadius(12)
                            CustomForm{
                                CustomSection(header:
                                    Text("Allergies")
                                        .font(.EuleTitle)
                                        .foregroundColor(.secondary)
                                        .padding(.all)
                                )  {
                                    VStack {
                                        HStack{
                                            TextField("Enter Details", text: $Allergies)
                                                .accentColor(Color.gray)
                                                .keyboardType(.namePhonePad)
                                                .foregroundColor(.EuleGreen)
                                                .font(.EuleLabel)
                                                .padding(.leading, 15)
                                            Image("Add")
                                                .padding(.all)
                                        }
                                    }
                                }
                            }
                            .background(Color.white)
                            .cornerRadius(12)
                        }
                        
                        // medical documents
                        VStack(alignment: .leading, spacing: 10){
                            
                            Text("Medical Documents")
                                .font(.EuleLabel)
                                .foregroundColor(.black)
                            
                            CustomForm{
                                CustomSection(header:
                                    Text("Familty Conditions")
                                        .font(.EuleTitle)
                                        .foregroundColor(.secondary)
                                        .padding(.all)
                                )  {
                                    VStack {
                                        TextField("Personal Conditions", text: $DOB)
                                            .accentColor(Color.gray)
                                            .keyboardType(.namePhonePad)
                                            .foregroundColor(.EuleGreen)
                                            .font(.EuleLabel)
                                            .padding(.leading, 15)
                                        
                                    }
                                }
                            }
                            .background(Color.white)
                            .cornerRadius(12)
                            CustomForm{
                                CustomSection(header:
                                    Text("Personal Conditions")
                                        .font(.EuleTitle)
                                        .foregroundColor(.secondary)
                                        .padding(.all)
                                )  {
                                    VStack {
                                        HStack{
                                            TextField("Enter Details", text: $DOB)
                                                .accentColor(Color.gray)
                                                .keyboardType(.namePhonePad)
                                                .foregroundColor(.EuleGreen)
                                                .font(.EuleLabel)
                                                .padding(.leading, 15)
                                            Image("Add")
                                                .padding(.all)
                                        }
                                    }
                                }
                            }
                            .background(Color.white)
                            .cornerRadius(12)
                            // add switch
                            HStack(alignment: .center, spacing: 10){
                                CustomForm{
                                    CustomSection(header:
                                        Text("Smoking Status")
                                            .font(.EuleTitle)
                                            .foregroundColor(.secondary)
                                            .padding(.all)
                                    )  {
                                        VStack {
                                            TextField("B+", text: $SmokingStatus)
                                                .accentColor(Color.gray)
                                                .keyboardType(.namePhonePad)
                                                .foregroundColor(.EuleGreen)
                                                .font(.EuleLabel)
                                                .padding(.leading, 15)
                                        }
                                    }
                                } .background(Color.white)
                                    .cornerRadius(12)
                                CustomForm{
                                    CustomSection(header:
                                        Text("Drinking Status")
                                            .font(.EuleTitle)
                                            .foregroundColor(.secondary)
                                            .padding(.all)
                                    )  {
                                        VStack {
                                            TextField("01/01/1997", text: $DrinkingStatus)
                                                .accentColor(Color.gray)
                                                .keyboardType(.namePhonePad)
                                                .foregroundColor(.EuleGreen)
                                                .font(.EuleLabel)
                                                .padding(.leading, 15)
                                        }
                                    }
                                }
                                .background(Color.white)
                                .cornerRadius(12)
                            }
                            CustomForm{
                                CustomSection(header:
                                    Text("Current Medications")
                                        .font(.EuleTitle)
                                        .foregroundColor(.secondary)
                                        .padding(.all)
                                )  {
                                    VStack {
                                        HStack{
                                            TextField("Enter Details", text: $Medication)
                                                .accentColor(Color.gray)
                                                .keyboardType(.namePhonePad)
                                                .foregroundColor(.EuleGreen)
                                                .font(.EuleLabel)
                                                .padding(.leading, 15)
                                            Image("Add")
                                                .padding(.all)
                                        }
                                    }
                                }
                            }
                            .background(Color.white)
                            .cornerRadius(12)
                        }
                        
                        // emergancy contacts
                        // design changes?
                        VStack(alignment: .leading, spacing: 10){
                            
                            Text("Emergancy Contacts")
                                .font(.EuleLabel)
                                .foregroundColor(.black)
                            
                            
                            CustomForm{
                                CustomSection(header:
                                    Text("Name")
                                        .font(.EuleTitle)
                                        .foregroundColor(.secondary)
                                        .padding(.all)
                                )  {
                                    VStack {
                                        TextField("Number", text: $Contact1)
                                            .accentColor(Color.gray)
                                            .keyboardType(.numberPad)
                                            .foregroundColor(.EuleGreen)
                                            .font(.EuleLabel)
                                            .padding(.leading, 15)
                                        
                                    }
                                }
                            }
                            .background(Color.white)
                            .cornerRadius(12)
                               CustomForm{
                              CustomSection(header:
                                  Text("Name")
                                      .font(.EuleTitle)
                                      .foregroundColor(.secondary)
                                      .padding(.all)
                              )  {
                                  VStack {
                                      TextField("Number", text: $Contact2)
                                          .accentColor(Color.gray)
                                          .keyboardType(.numberPad)
                                          .foregroundColor(.EuleGreen)
                                          .font(.EuleLabel)
                                          .padding(.leading, 15)
                                      
                                  }
                              }
                          }
                            .background(Color.white)
                            .cornerRadius(12)
                        }
                        Button(action: {}){
                            Text("Save")
                        }.buttonStyle(EuleGreenButton())
                        
                    }
                    .padding(.init(top: 10, leading: 16, bottom: 10, trailing: 16))
                }
                
            }
            .navigationBarColor(.EuleBackground)
                
            .navigationBarTitle("", displayMode: .inline)
        }
    }
}


struct Healthcard_Previews: PreviewProvider {
    static var previews: some View {
        Healthcard()
    }
}
