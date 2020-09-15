//
//  AddReminders.swift
//  Eule
//
//  Created by Hariom Palkar on 15/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AddReminders: View {
    @State public var MedicineName = ""
    @State public var MedicineType = ""
    @State public var MedicineDays = ""
    @State public var Consumption = ""
    @State public var CheckupTime = ""
    @State public var Meal = ""

    var body: some View {
        
        VStack{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 6){
                    ScrollView(.vertical, showsIndicators: false){
                        
                        CustomForm {
                            CustomSection(header:
                                Text("Medicine Name")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Ex. Calcium", text: $MedicineName)
                                        .keyboardType(.alphabet)
                                        .accentColor(Color.gray)
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
                                Text("Medicine Type")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Ex: Tablet", text: $MedicineType)
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
                                Text("Days")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Mon-Tue", text: $MedicineDays)
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
                                Text("Consumption per day")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Date", text: $Consumption)
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
                        ForEach(0..<2) { item in
                            CustomForm{
                                CustomSection(header:
                                    Text("Intake")
                                        .font(.EuleTitle)
                                        .foregroundColor(.secondary)
                                        .padding(.all)
                                )  {
                                    VStack {
                                        TextField("20: 45", text: self.$CheckupTime)
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
                                Text("Meal Annotation")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Post Meal", text: $Meal)
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
                        
                        Spacer()
                        Button(action: {}){
                            HStack(alignment: .center){
                                Text("Save")
                                    .foregroundColor(.white)
                                    .font(.EuleLabel)
                            }
                            .padding(.all)
                            .frame(width: (UIScreen.main.bounds.width - 20), height: 56, alignment: .center)
                            .background(Color(.EuleGreen))
                            .cornerRadius(12)
                        }
                        
                        
                    }
                    .padding(.init(top: 15, leading: 10, bottom: 0, trailing: 10))
                }
                    
                .navigationBarColor(.EuleBackground)
                .navigationBarItems(leading: TitleView(title: "Medicine"))
                .navigationBarTitle("", displayMode: .inline)
            }
        }
    }
    
}

struct AddReminders_Previews: PreviewProvider {
    static var previews: some View {
        AddReminders()
    }
}
