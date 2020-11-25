//
//  ContentView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI
import FirebaseAuth

struct ContentView: View {
    
@State var showWebView = false
    var body: some View {
        NavigationView{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading){
                    ZStack(alignment: .topLeading){
                        ScrollView(showsIndicators: false) {
                            VStack(alignment: .leading, spacing: 10){
                       Spacer()
                        .frame(height: 15)
                                CardsView()
                                    .padding(.trailing, 7)
                                VStack(alignment: .leading, spacing: 10){
                                    HStack{
                                        Text(" Bulletin")
                                            .font(.EuleTitle)
                                            .foregroundColor(.gray)
                                        Spacer()
                                    }
                                    VStack(alignment: .leading){
                                        Button(action: {
                                            self.showWebView.toggle()
                                        }) {
                                            BloodView()
                                        } .sheet(isPresented: $showWebView, content: {
                                            SafariView(url: URL(string: "https://eule.in/")!) })
                                        Button(action: {
                                            self.showWebView.toggle()
                                        }) {
                                            AssistanceView()
                                        } .sheet(isPresented: $showWebView, content: {
                                            SafariView(url: URL(string: "https://www.eule.in/")!) });
                                    }
                                    .background(Color.white)
                                    .frame(width: 400, height: 100)
                                    .cornerRadius(15)
                                    .shadow(color: Color.black.opacity(0.05),radius: 5)
                                }
                                .padding(.all, 10)
                                RemindersView()
                                GoalsView()
                            }
                        }
                        .padding([.leading, .top, .trailing])
                    }
                }
            }
            .navigationBarColor(.EuleBackground)
                .navigationBarItems(leading: HomeLeftView(),trailing: HomeRightView())
                .navigationBarTitle("",displayMode: .inline)
           
            .onAppear(perform: {
                print("userid  is \(Auth.auth().currentUser?.uid ?? "")")
                
            })
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
