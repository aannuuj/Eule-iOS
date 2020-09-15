//
//  RecordView.swift
//  Eule
//
//  Created by Hariom Palkar on 01/08/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct RecordView: View {
    @State private var showBottomSheet = false
    
    var body: some View {
        NavigationView{
            ZStack{
                Color.EuleBackground.edgesIgnoringSafeArea(.all)
                VStack(alignment: .leading){
                    
                   
                        ScrollView(showsIndicators: false) {
                            VStack(alignment: .leading, spacing: 20){
                                Spacer()
                                VitalsView()
                                LabRecordsView()
                                PrecriptionsView()
                            }
                            .padding(.init(top: 10, leading: 20, bottom: 0, trailing: 20))
                        }
                         
                        BottomSheetModal(display: $showBottomSheet) {
                            BottomSheetView()
                                .onTapGesture {
                                   // dismiss view
                            }
                        }
                    
                }
            }
                .navigationBarColor(.EuleBackground)
                .navigationBarItems(leading: TitleView(title: "Records"), trailing:
                    Button(action: { withAnimation {
                        self.showBottomSheet.toggle()
                    }})
                       {
                    Image("Add")
                    })
                .navigationBarTitle("", displayMode: .inline)
            .onAppear(
                // remove bottom sheet
            )
        }
    }
}

struct RecordView_Previews: PreviewProvider {
    static var previews: some View {
        RecordView()
    }
}
