//
//  AddGoals.swift
//  Eule
//
//  Created by Hariom Palkar on 14/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//
import SwiftUI

struct AddGoals: View {
    @State public var goalName = ""
    @State public var goalType = ""
    @State public var goalTime = ""
    @State public var goalDays = ""
    var body: some View {
        
        VStack{
            
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                
                Spacer()
                VStack(alignment: .leading, spacing: 24){
                    ScrollView{
                        Text("Add Goals")
                            .font(.EuleHeading)
                            .foregroundColor(.EuleGreen)
                        Spacer()
                        
                        CustomForm {
                            CustomSection(header:
                                Text("Goal Name")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Ex: Hit Gym", text: $goalName)
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
                        
                        // add type picker
                        CustomForm{
                            CustomSection(header:
                                Text("Goal Type")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Ex: Workout", text: $goalType)
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
                                Text("Time Duration")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("01:25:00", text: $goalTime)
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
                        // add picker
                        CustomForm{
                            CustomSection(header:
                                Text("Days")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    TextField("Date", text: $goalDays)
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
                                Text("Done")
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
            }
        }
    }
    
}


struct AddGoals_Previews: PreviewProvider {
    static var previews: some View {
        AddGoals()
    }
}
