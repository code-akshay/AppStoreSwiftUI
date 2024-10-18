//
//  AdView.swift
//  OMDBSwiftUI
//
//  Created by Akshay  on 18/10/24.
//

import SwiftUI

struct AdView: View {
    var body: some View {
        ZStack {
            RoundedRectangle(cornerRadius: 5.0)
                .foregroundStyle(Color.customSkyBlue)
                .frame(width: 30, height: 18)
            Text("Ad")
                .font(.system(size: 12.0))
                .foregroundStyle(Color(red: 147, green: 192, blue: 257))
        }
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    AdView()
}
