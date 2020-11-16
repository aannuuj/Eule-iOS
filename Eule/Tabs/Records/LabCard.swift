//
//  LabCard.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct RecordsCard: View {
     var labReport:Report
    var body: some View {
        HStack(alignment: .center, spacing: 20){
            Text(labReport.name)
                .foregroundColor(.EuleGreen)
                .font(.EuleHeading)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
                .frame(width: 100)
            Text(labReport.time)
                .foregroundColor(.gray)
                .font(.EuleTitle)
             .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding(.all)
        .frame(width: 400, height: 55)
        .background(Color(.white))
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.05),radius: 5)
        
    }
}
struct PrescriptionCard: View {
     var labReport:Prescription
    var body: some View {
        HStack(alignment: .center, spacing: 20){
            Text(labReport.name)
                .foregroundColor(.EuleGreen)
                .font(.EuleHeading)
                .frame(maxWidth: .infinity, alignment: .leading)
            Spacer()
                .frame(width: 100)
            Text(labReport.time)
                .foregroundColor(.gray)
                .font(.EuleTitle)
             .frame(maxWidth: .infinity, alignment: .trailing)
        }
        .padding(.all)
        .frame(width: 400, height: 55)
        .background(Color(.white))
        .cornerRadius(10)
        .shadow(color: Color.black.opacity(0.05),radius: 5)
        
    }
}

struct LabCard_Previews: PreviewProvider {
    static var previews: some View {
       PrescriptionCard(labReport: prescriptionData[3])
            .previewLayout(.sizeThatFits)
    }
}
