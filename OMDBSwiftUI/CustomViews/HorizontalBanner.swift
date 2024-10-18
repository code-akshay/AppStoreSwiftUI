//
//  HorizontalBanner.swift
//  OMDBSwiftUI
//
//  Created by Akshay  on 16/10/24.
//

import Foundation
import SwiftUI

struct HorizontalBanner: View {
    let bounds = UIScreen.main.bounds
    var body: some View {
        ZStack {
            LinearGradient(colors: [.white, .customIndigoLight], startPoint: .top, endPoint: .bottom)
            VStack{
                Spacer()
                Image("AppIcon-Campfire-Preview")
                    .resizable()
                    .scaledToFit()
                    .frame(width: bounds.height * 0.1, height: bounds.height * 0.1)
                Spacer()
                HStack{
                    Spacer()
                    VStack(spacing: 8.0) {
                        HStack {
                            Text("Booking.com Travel Deals")
                                .foregroundStyle(Color.white)
                            Spacer()
                        }
                        HStack {
                            AdView()
                            Text("Hotels & Vacation Rentals")
                                .fontWeight(.thin)
                                .foregroundStyle(.white)
                            Spacer()
                        }
                    }.padding()
                    Image(systemName: "icloud.and.arrow.down")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 30, height: 30)
                        .padding([.leading, .bottom, .trailing, .top])
                        .foregroundColor(.white)
                }
            }
        }
        .cornerRadius(20)
        .frame(width: .infinity, height: bounds.height * 0.2)
    }
}


#Preview(traits: .sizeThatFitsLayout) {
    HorizontalBanner()
}
