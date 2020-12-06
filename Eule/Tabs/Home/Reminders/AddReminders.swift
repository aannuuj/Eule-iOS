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
    @State public var MedicineType : Int?
    @State public var MedicineDays = ""
    @State public var Consumption : Int?
    @State public var ConsumptionTime = Date()
    @State public var Meal: Int?
    
    public var selectedArray = [ "Tablets", "Syrup", "Injection", "Capsule", "Ointment", "Powder", "Cream", "Suspension"]
    public var consumptionPerDay = [ "1", "2", "3", "4", "5"]
    public var meal = [ "Post", "Pre meal"]
    
    var body: some View {
        VStack{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 6){
                    ScrollView(.vertical, showsIndicators: false){
                        CustomForm {
                            CustomSection(header:Text("Medicine Name"))  {
                                VStack {
                                    TextField("Ex. Calcium", text: $MedicineName)
                                }
                            }
                        }
                        CustomForm{
                            CustomSection(header:Text("Medicine Type"))  {
                                VStack {
                                    PickerTextField(data: selectedArray, placeholder: "Select Item", lastSelectedIndex: self.$MedicineType)
                                }
                            }
                        }
                        CustomForm{
                            // implement days picker in here
                            CustomSection(header:Text("Days"))  {
                                VStack {
                                    TextField("Mon-Tue", text: $MedicineDays)
                                }
                            }
                        }
                        CustomForm{
                            CustomSection(header:Text("Consumption per day"))  {
                                VStack {
                                    PickerTextField(data: consumptionPerDay, placeholder: "Select Item", lastSelectedIndex: self.$Consumption)
                                }
                            }
                        }
                        ForEach(0..<2) { item in
                            CustomForm{
                                CustomSection(header:Text("Intake"))  {
                                    VStack {
                                        DatePicker("", selection: $ConsumptionTime, displayedComponents: .hourAndMinute)
                                            .datePickerStyle(CompactDatePickerStyle())
                                            .padding(.trailing, 60)
                                    }
                                }
                            }
                        }
                        CustomForm{
                            CustomSection(header: Text("Meal Annotation") )  {
                                VStack {
                                    PickerTextField(data:  meal, placeholder: "Select Item", lastSelectedIndex: self.$Meal)
                                }
                            }
                        }
                        Spacer()
                        Button(action: {}){
                            HStack(alignment: .center){
                                Text("Save")
                                    .foregroundColor(.white)
                                    .font(.EuleLabel)
                            }
                            .padding(.all)
                            
                        }.buttonStyle(EuleGreenButton())
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
