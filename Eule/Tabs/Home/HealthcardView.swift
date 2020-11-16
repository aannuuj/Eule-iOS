//
//  HealthcardView.swift
//  Eule
//
//  Created by Hariom Palkar on 15/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct HealthcardView: View {
    @State var healthCard : HealthCard = healthCardData
    @State public var Tapped = false
    
    @State public var SmokingStatus = false
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    @GestureState private var dragOffset = CGSize.zero
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
                        
                        VStack(alignment: .leading, spacing: 15){
                            
                            Text("Personal Details")
                                .font(.EuleLabel)
                                .foregroundColor(.black)
                            
                            HStack(alignment: .center, spacing: 20){
                                CustomForm{
                                    CustomSection(header:
                                                    Text("Blood Group")
                                                    .font(.EuleTitle)
                                                    .foregroundColor(.secondary)
                                                    .padding(.all)
                                                  
                                    )  {
                                        HStack(){
                                            Text(healthCard.BloodGroup)
                                                .accentColor(Color.gray)
                                                .foregroundColor(.EuleGreen)
                                                .font(.EuleLabel)
                                                .padding(.leading, 15)
                                            Spacer()
                                            
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
                                        HStack() {
                                            Text(healthCard.DOB)
                                                .accentColor(Color.gray)
                                                .foregroundColor(.EuleGreen)
                                                .font(.EuleLabel)
                                                .padding(.leading, 15)
                                            Spacer()
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
                                    HStack() {
                                        Text(healthCard.InsuranceCompany)
                                            .accentColor(Color.gray)
                                            .foregroundColor(.EuleGreen)
                                            .font(.EuleLabel)
                                            .padding(.leading, 15)
                                        Spacer()
                                        
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
                                    HStack() {
                                        
                                        Text(healthCard.Allergies)
                                            .accentColor(Color.gray)
                                            .foregroundColor(.EuleGreen)
                                            .font(.EuleLabel)
                                            .padding(.leading, 15)
                                        Spacer()
                                        
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
                                    HStack() {
                                        Text(healthCard.FamilyCondition)
                                            .accentColor(Color.gray)
                                            .keyboardType(.namePhonePad)
                                            .foregroundColor(.EuleGreen)
                                            .font(.EuleLabel)
                                            .padding(.leading, 15)
                                        Spacer()
                                        
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
                                    HStack() {
                                        
                                        Text(healthCard.FamilyCondition)
                                            .accentColor(Color.gray)
                                            .foregroundColor(.EuleGreen)
                                            .font(.EuleLabel)
                                            .padding(.leading, 15)
                                        Spacer()
                                        
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
                                        HStack() {
                                            Toggle(isOn: $SmokingStatus) {
                                                        
                                                        }.padding()
                                            .foregroundColor(.EuleGreen)
                                            .toggleStyle(SwitchToggleStyle())
                                            
//                                            Text(healthCard.SmokingStatus)
//                                                .accentColor(Color.gray)
//                                                .foregroundColor(.EuleGreen)
//                                                .font(.EuleLabel)
//                                                .padding(.leading, 15)
                                            Spacer()
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
                                        HStack() {
//                                            Text(healthCard.DrinkingStatus)
//                                                .accentColor(Color.gray)
//                                                .foregroundColor(.EuleGreen)
//                                                .font(.EuleLabel)
//                                                .padding(.leading, 15)
                                            Spacer()
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
                                    HStack() {
                                        Text(healthCard.Medication)
                                            .accentColor(Color.gray)
                                            .foregroundColor(.EuleGreen)
                                            .font(.EuleLabel)
                                            .padding(.leading, 15)
                                        Spacer()
                                    }
                                }
                            }
                            .background(Color.white)
                            .cornerRadius(12)
                        }
                        
                        // emergancy contacts
                        // design changes?
                        // implement for loop
                        NavigationLink(destination: Healthcard(), isActive: $Tapped) { EmptyView() }
                        
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
                                    HStack {
                                        Text(healthCard.Contact1)
                                            .accentColor(Color.gray)
                                            .foregroundColor(.EuleGreen)
                                            .font(.EuleLabel)
                                            .padding(.leading, 15)
                                        Spacer()
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
                                    HStack() {
                                        Text(healthCard.Contact2)
                                            .accentColor(Color.gray)
                                            .foregroundColor(.EuleGreen)
                                            .font(.EuleLabel)
                                            .padding(.leading, 15)
                                        Spacer()
                                    }
                                }
                            }
                            .background(Color.white)
                            .cornerRadius(12)
                        }
                    }
                    .padding(.init(top: 10, leading: 16, bottom: 10, trailing: 16))
                }
            }
            .navigationBarColor(.EuleBackground)
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton(label: "Health"),trailing: Button(action:{
                self.Tapped = true
            }){
                Image("Edit")
                    .frame(width: 44, height: 44)
            })
            
            .gesture(
                DragGesture()
                    .updating(
                        $dragOffset, body: { (value, state, transaction) in
                            if(value.startLocation.x < 20 && value.translation.width > 100) {
                                self.mode.wrappedValue.dismiss()
                            }
                        }
                    )
            )
        }
    }
    
}



struct HealthcardView_Previews: PreviewProvider {
    static var previews: some View {
        HealthcardView()
    }
}
