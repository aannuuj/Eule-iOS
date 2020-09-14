//
//  ViewRecords.swift
//  Eule
//
//  Created by Hariom Palkar on 13/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct ViewRecords: View {
    @State public var docName = ""
    @State public var docType = ""
    @State public var doctorsName = ""
    @State public var docDate = ""
    var body: some View {
        VStack{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                ScrollView( showsIndicators: false){
                    VStack{
                        VStack{
                        CustomForm{
                            CustomSection(header:
                                Text("Doctors Name")
                                    .font(.EuleTitle)
                                    .foregroundColor(.secondary)
                                    .padding(.all)
                            )  {
                                VStack {
                                    Text(doctorsName)
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
                        HStack(alignment: .center, spacing: 10){
                            
                            CustomForm{
                                CustomSection(header:
                                    Text("Document Type")
                                        .font(.EuleTitle)
                                        .foregroundColor(.secondary)
                                        .padding(.all)
                                )  {
                                    VStack {
                                        Text(docType)
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
                                        Text(docDate)
                                            .accentColor(Color.gray)
                                            .keyboardType(.namePhonePad)
                                            .foregroundColor(.EuleGreen)
                                            .font(.EuleLabel)
                                            .padding(.leading, 15)
                                    }
                                }
                            }.background(Color.white)
                                .cornerRadius(12)
                            
                        }
                    }.padding(.trailing, 16)
                        ScrollView(.horizontal, showsIndicators: false){
                            HStack{
                                
                                ForEach(0..<3) { item in
                                    Image("BackgroundImage")
                                        .resizable()
                                        .frame ( width:  (UIScreen.main.bounds.width - 50), height: UIScreen.main.bounds.height/1.6)
                                        .cornerRadius(15)
                                }
                            }
                        }
                        
                    }
                    .padding(.init(top: 10, leading: 16, bottom: 10, trailing: 0))
                }
                
                
            }
            .navigationBarColor(.EuleBackground)
            .navigationBarItems(leading: TitleView(title: docName) .navigationBarItems(trailing: Button(action: {} ){
                Image("Edit")
                    .renderingMode(.original)
            }))
            .navigationBarTitle("", displayMode: .inline)
            
        }
    }
}
struct ViewRecords_Previews: PreviewProvider {
    static var previews: some View {
        ViewRecords()
    }
}
