//
//  UserName.swift
//  Eule
//
//  Created by Hariom Palkar on 14/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI
import PhotosUI

struct UserName: View {
    @State private var Tapped = false
    @State private var image: Image?
    @State var user: User = userData
    @State private var showingImagePicker = false
    @State private var images: [UIImage] = []
    
    private var configuration: PHPickerConfiguration = {
        var configuration = PHPickerConfiguration(photoLibrary: PHPhotoLibrary.shared())
        configuration.selectionLimit = 1
        configuration.filter = .any(of: [.livePhotos, .images])
        return configuration
    }()
    
    var selectedArray = [ "A+", "A-", "B+", "B-", "O+", "O-", "AB+", "AB+"]
    lazy var viewModel: LoginViewModel = {
        return LoginViewModel()
    }()
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
                        // add image of from the picker
                        Image(systemName: "person.fill" )
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
                                )  {
                                    VStack(alignment: .leading) {
                                        PickerTextField(data: selectedArray, placeholder: "Select Item", lastSelectedIndex: self.$user.bloodGroup)
                                    }
                                }.frame(width: 190, height: 90)
                            }
                            .background(Color.EuleBackground)
                            .cornerRadius(12)
                            CustomForm{
                                CustomSection(header:
                                                Text("Date of Birth")
                                )  {
                                    
                                    DatePicker("", selection: $user.dob, displayedComponents: .date)
                                        .datePickerStyle(CompactDatePickerStyle())
                                        .padding(.trailing, 60)
                                }.frame(width: 190, height: 90)
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
            .sheet(isPresented: $showingImagePicker) {
                PhotoPicker(configuration: configuration, pickerResult: $images, isPresented: $showingImagePicker)
            }
        }
        
    }
}

