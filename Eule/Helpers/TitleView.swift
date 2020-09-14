//
//  TitleView.swift
//  Eule
//
//  Created by Hariom Palkar on 12/09/20.
//  Copyright © 2020 Hariom Palkar. All rights reserved.
//

import SwiftUI

struct TitleView: View {
    var title = ""
    var body: some View {
        Text(title)
            .foregroundColor(.EuleGreen)
            .font(.EuleHeading)
    }
}

struct TitleView_Previews: PreviewProvider {
    static var previews: some View {
        TitleView()
    }
}
