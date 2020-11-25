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
                            
                            HealthCardHeaderView(title: "Personal Details")
                
                            HStack(alignment: .center, spacing: 20){
                                CustomForm{
                                    CustomSection(header:
                                                    Text("Blood Group")
                                    )  {
                                        HStack(){
                                            Text(healthCard.BloodGroup)
                                            Spacer()
                                        }
                                    }
                                }
                                CustomForm{
                                    CustomSection(header:
                                                    Text("Date of Birth")
                                    )  {
                                        HStack() {
                                            Text(healthCard.DOB)
                                            Spacer()
                                        }
                                    }
                                }
                            }
                            CustomForm{
                                CustomSection(header:
                                                Text("Insuarance Company")
                                )  {
                                    HStack() {
                                        Text(healthCard.InsuranceCompany)
                                        Spacer()
                                    }
                                }
                            }
                            
                            CustomForm{
                                CustomSection(header:
                                                Text("Allergies")
                                )  {
                                    HStack() {
                                        Text(healthCard.Allergies)
                                        Spacer()
                                    }
                                }
                            }
                            
                            HealthCardHeaderView(title: "Medical Documents")
                            
                            CustomForm{
                                CustomSection(header:
                                                Text("Familty Conditions")
                                )  {
                                    HStack() {
                                        Text(healthCard.FamilyCondition)
                                            .keyboardType(.namePhonePad)
                                        Spacer()
                                    }
                                }
                            }
                            CustomForm{
                                CustomSection(header:
                                                Text("Personal Conditions")
                                )  {
                                    HStack() {
                                        Text(healthCard.FamilyCondition)
                                        Spacer()
                                    }
                                }
                            }
                            
                            // add switch
                            HStack(alignment: .center, spacing: 10){
                                CustomForm{
                                    CustomSection(header:
                                                    Text("Smoking Status")
                                                  
                                    )  {
                                        HStack() {
                                            Toggle(isOn: $SmokingStatus) {
                                                
                                            }.padding()
                                            .foregroundColor(.EuleGreen)
                                            .toggleStyle(SwitchToggleStyle())
                                        
                                            Spacer()
                                        }
                                        
                                    }
                                }
                                CustomForm{
                                    CustomSection(header:
                                                    Text("Drinking Status")
                                    )  {
                                        HStack() {
                                            Spacer()
                                        }
                                    }
                                }
                            }
                            CustomForm{
                                CustomSection(header:
                                                Text("Current Medications")
                                              
                                )  {
                                    HStack() {
                                        Text(healthCard.Medication)
                                        Spacer()
                                    }
                                }
                            }
                        }
                        // emergancy contacts
                        // design changes?
                        // implement for loop
                        NavigationLink(destination: Healthcard(), isActive: $Tapped) { EmptyView() }
                        VStack(alignment: .leading, spacing: 10){
                            HealthCardHeaderView(title: "Emergancy Contacts")
                            CustomForm{
                                CustomSection(header:
                                                Text("Name")
                                )  {
                                    HStack {
                                        Text(healthCard.Contact1)
                                        Spacer()
                                    }
                                }
                            }
                            CustomForm{
                                CustomSection(header:
                                                Text("Name")
                                )  {
                                    HStack() {
                                        Text(healthCard.Contact2)
                                        Spacer()
                                    }
                                }
                            }
                        }.padding(.top, 20)
                    }
                    .padding(.init(top: 20, leading: 16, bottom: 10, trailing: 16))
                }
            }
            .navigationBarColor(.EuleBackground)
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: BackButton(label: "Healthcard"),trailing: Button(action:{
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
