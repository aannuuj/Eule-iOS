//
//  UserName.swift
//  Eule
//
//  Created by Hariom Palkar on 14/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct UserName: View {
    @State private var Tapped = false
    @State private var image: Image?
    @State var user: User = userData
    @State var Name: String = ""
    @State private var showingImagePicker = false
    @State private var inputImage: UIImage?
    @State public var BloodGroup = ""
    @State public var DOB = ""
    var size = UIScreen.main.bounds
    var body: some View {
        NavigationView{
        ZStack{
            NavigationLink(destination: MedicalReports(), isActive: $Tapped) { EmptyView() }
            Color.EuleBackground.edgesIgnoringSafeArea(.all)
            VStack(alignment: .center, spacing: 10){
                VStack(alignment: .center, spacing: 30){
                    Spacer()
                        .frame( height: size.width/10)
                   Image(systemName: "Person.fill" )
                        .onTapGesture {
                            self.showingImagePicker = true
                        }
                    TextField("UserName", text: $user.name)
                        .font(.EuleHeading)
                        .keyboardType(.default)
                        .textContentType(.name)
                        .fixedSize()
                        .accentColor(Color.EuleGreen)
                        .animation(.linear)
                    HStack(alignment: .center, spacing: 10){
                        CustomForm{
                            CustomSection(header:
                                            Text("Blood Group")
                                            .font(.EuleTitle)
                                            .foregroundColor(.secondary)
                                            .padding(.all)
                            )  {
                                VStack {
                                    TextField("B+", text: $user.bloodGroup)
                                        .accentColor(Color.gray)
                                        .keyboardType(.namePhonePad)
                                        .foregroundColor(.EuleGreen)
                                        .font(.EuleLabel)
                                        .padding(.leading, 15)
                                }
                            }
                        } .background(Color.EuleBackground)
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
                        .background(Color.EuleBackground)
                        .cornerRadius(12)
                    }.padding(.all)
                    Spacer()
                    
                    Button(action: {
                            self.Tapped = true}){
                        Text("Continue")
                    }.buttonStyle(EuleGreenButton())
                    .onTapGesture {
                        print("hey")
                        self.Tapped = true
                    }
                }.background(Color.white)
            }
            .cornerRadius(15)
            .frame(width: (size.width) )
            .padding(.top, 40)
            
            
        }
        
        .navigationBarTitle("", displayMode: .inline)
        .navigationBarHidden(true)
        .sheet(isPresented: $showingImagePicker, onDismiss: loadImage) {
            ImagePicker(image: self.$inputImage)
                .accentColor(.EuleGreen)
        }
        }
        
    }
    func loadImage() {
        guard let inputImage = inputImage else { return }
        image = Image(uiImage: inputImage)
    }
    
}

