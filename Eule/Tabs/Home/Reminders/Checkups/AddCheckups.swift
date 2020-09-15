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
                            CustomSection(header:
                                Text("Title of checkup")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Ex. App with Dr. Srtange", text: $CheckupName)
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
                                Text("Checkup Type")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Ex: Dental", text: $CheckupType)
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
                                    TextField("Enter Doctors name.", text: $docName)
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
                                    TextField("Date", text: $CheckupDate)
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
                                Text("Timing")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("20: 45", text: $CheckupTime)
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
                                                      Text("Remind me before")
                                                          .font(.EuleTitle)
                                                          .foregroundColor(.secondary)
                                                          .padding(.all)
                                                  )  {
                                                      VStack {
                                                          TextField("30 mins", text: $remindMe)
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
                                                      Text("Note(Optional)")
                                                          .font(.EuleTitle)
                                                          .foregroundColor(.secondary)
                                                          .padding(.all)
                                                  )  {
                                                      VStack {
                                                          TextField("Eat Ice Cream", text: $note)
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
