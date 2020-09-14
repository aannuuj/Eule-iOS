//
//  AddRecords.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct AddRecords: View {
    @State public var docName = ""
    @State public var docType = ""
    @State public var doctorsName = ""
    @State public var docDate = ""
    var body: some View {
        
        VStack{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                
                VStack(alignment: .leading, spacing: 6){
                    ScrollView{
                        ZStack{
                            Text("Change")
                                .offset(y: 180)
                                .foregroundColor(.gray)
                            Image("BackgroundImage")
                                .resizable()
                                .frame(width: (UIScreen.main.bounds.width - 20), height: 200)
                                .cornerRadius(15)
                            
                        }
                        CustomForm {
                            CustomSection(header:
                                Text("Document Name")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Ex: MRI Scan", text: $docName)
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
                                Text("Document Type")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Enter Doctors name.", text: $docType)
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
                                Text("Doctors Name")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Enter Doctors name.", text: $doctorsName)
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
                                Text("Date")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Date", text: $docDate)
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
                .navigationBarItems(leading: TitleView(title: "Add Records"))
                .navigationBarTitle("", displayMode: .inline)
            }
        }
    }
    
}

struct AddRecords_Previews: PreviewProvider {
    static var previews: some View {
        AddRecords()
    }
}
//
//CustomForm {
//                           CustomSection(header:
//                               Text("Date")
//                                   .font(.fampaySubheadline)
//                                   .foregroundColor(.secondary)
//                           ) {
//                               Picker("Date", selection: $docDate ) {
//                               }
//                           }.pickerStyle(DatePicker())
//                       }
//                       .padding()
//
//                   // add picker here
