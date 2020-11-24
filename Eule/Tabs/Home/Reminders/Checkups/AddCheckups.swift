//
//  AddCheckups.swift
//  Eule
//
//  Created by Hariom Palkar on 15/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AddCheckups: View {
    @State public var CheckupName = ""
    @State public var CheckupType = ""
    @State public var CheckupDate = ""
    @State public var docName = ""
    @State public var CheckupTime = ""
    @State public var remindMe = ""
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
                                    TextField("Ex: Dental", text: $CheckupType)
                                        .keyboardType(.namePhonePad)
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
                                VStack {
                                    TextField("Date", text: $CheckupDate)
                                        .keyboardType(.namePhonePad)
                                }
                            }
                        }
                        CustomForm{
                            CustomSection(header:Text("Timing"))  {
                                VStack {
                                    TextField("20: 45", text: $CheckupTime)
                                        .keyboardType(.namePhonePad)
                                }
                            }
                        }
                        CustomForm{
                            CustomSection(header:Text("Remind me before"))  {
                                VStack {
                                    TextField("30 mins", text: $remindMe)
                                        .keyboardType(.namePhonePad)
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
                            .frame(width: (UIScreen.main.bounds.width - 20), height: 56, alignment: .center)
                            .background(Color(.EuleGreen))
                            .cornerRadius(12)
                        }
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
