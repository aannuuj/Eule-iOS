//
//  MedicalReports.swift
//  Eule
//
//  Created by Hariom Palkar on 14/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct MedicalReports: View {
    
    @State private var OnTapped = false
     @State private var Tapped = false
    @State private var ScanTapped = false
    var size = UIScreen.main.bounds
    var body: some View {
        NavigationView{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                VStack(alignment: .center, spacing: 10){
                    VStack(alignment: .center, spacing: 30){
                        Spacer()
                            .frame( height: size.width/20)
                        
                        Text("Medical Reports")
                            .font(.EuleHeading)
                            .foregroundColor(.black)
                            .opacity(0.75)
                        
                        Text("Upload your prescriptions, lab records or\nany other medical documents")
                            .font(.EuleTitle2)
                            .foregroundColor(.gray)
                            .multilineTextAlignment(.center)
                            .opacity(0.50)
                        
                        NavigationLink(destination: AddRecords(), isActive: $Tapped) { EmptyView() }
                        NavigationLink(destination: ViewRecords(), isActive: $ScanTapped) { EmptyView() }
                        
                        HStack(alignment: .center, spacing: 16){
                            Card2(imageName: "Upload", title: "Upload Documents")
                                .cornerRadius(15)
                                .onTapGesture {
                                    self.Tapped = true
                            }
                            Card2(imageName: "Scan", title: "Scan Documents")
                                .cornerRadius(15)
                                .onTapGesture {
                                    self.ScanTapped = true
                            }
                        }
                        Spacer()
                        
                        NavigationLink(destination: ComingSoonView(excited: false), isActive: $OnTapped) { EmptyView() }
                                                Button(action: {
                             self.OnTapped = true}){
                            Text("Skip")
                            
                        }.buttonStyle(EuleGreenButton())
                        
                        
                    }.background(Color.white)
                }
                .cornerRadius(15)
                .frame(width: (size.width) )
                .padding(.top, 40)
                
                
                
            }
            .navigationBarTitle("", displayMode: .inline)
            .navigationBarHidden(true)
            .accentColor(.EuleGreen)
            .onAppear {
                
            }
        }
    }
}


struct MedicalReports_Previews: PreviewProvider {
    static var previews: some View {
        MedicalReports()
    }
}

