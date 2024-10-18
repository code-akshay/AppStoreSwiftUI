//
//  HomeView.swift
//  OMDBSwiftUI
//
//  Created by Akshay  on 12/10/24.
//

import SwiftUI

struct HomeView: View {
    let stringAraay = [String](repeating: "Title", count: 10)
    
    var body: some View {
        List(0..<stringAraay.count, id: \.self) { index in
            Text("\(stringAraay[index])\(index)")
        }
    }
}

#Preview {
    HomeView()
}
