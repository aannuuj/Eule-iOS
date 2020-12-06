//
//  AddCheckups.swift
//  Eule
//
//  Created by Hariom Palkar on 15/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AddCheckups: View {
    @State public var checkupType : Int?
    @State public var CheckupName = ""
     var checkUpArray = [ "dental", "oral", "eye", "ortho"]
    var reminderArray = [ "30 mins", "45 mins", "1 hr", "2 hr"]
  
   
    @State public var checkupDate = Date()
    @State public var docName = ""
    @State public var remindMe : Int?
    @State public var note = ""
    var body: some View {
        
        VStack{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 6){
                    ScrollView(.vertical, showsIndicators: false){
                        CustomForm {
                            CustomSection(header:Text("Title of checkup"))  {
                                VStack {
                                    TextField("Ex. App with Dr. Srtange", text: $CheckupName)
                                        .keyboardType(.alphabet)
                                }
                            }
                        }
                        CustomForm{
                            CustomSection(header:Text("Checkup Type"))  {
                                VStack {
                                    PickerTextField(data: checkUpArray, placeholder: "Select Item", lastSelectedIndex: self.$checkupType)
                                }
                            }
                        }
                        CustomForm{
                            CustomSection(header:Text("Doctors Name"))  {
                                VStack {
                                    TextField("Enter Doctors name.", text: $docName)
                                        .keyboardType(.namePhonePad)
                                }
                            }
                        }
                        CustomForm{
                            CustomSection(header:Text("Date"))  {
                                VStack (alignment: .leading){
                                    DatePicker("", selection: $checkupDate)
                                        .datePickerStyle(CompactDatePickerStyle())
                                        .padding(.trailing, 170)
                                }
                            }
                        }
                      
                        CustomForm{
                            CustomSection(header:Text("Remind me before"))  {
                                VStack {
                                    PickerTextField(data: reminderArray, placeholder: "Select Item", lastSelectedIndex: self.$remindMe)
                                }
                            }
                        }
                        CustomForm{
                            CustomSection(header:Text("Note(Optional)"))  {
                                VStack {
                                    TextField("Eat Ice Cream", text: $note)
                                        .keyboardType(.namePhonePad)
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
                .navigationBarItems(leading: TitleView(title: "Checkup"))
                .navigationBarTitle("", displayMode: .inline)
            }
        }
    }
}

struct AddCheckups_Previews: PreviewProvider {
    static var previews: some View {
        AddCheckups()
    }
}
