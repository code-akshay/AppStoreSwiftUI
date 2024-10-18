//
//  CardView.swift
//  OMDBSwiftUI
//
//  Created by Akshay  on 14/10/24.
//

import SwiftUI

struct CardView: View {
    var body: some View {
        ZStack {
            LinearGradient(
              colors: [
                .clear,
                .blue],
              startPoint: .top,
              endPoint: .bottom
            )
            VStack {
                Image(.pubg)
                    .resizable()
                    .scaledToFill()
                Spacer(minLength: 75)
            }
            VStack(spacing: 0) {
                Spacer()
                VStack {
                    Spacer()
                    HStack {
                        Text("level up".uppercased())
                            .padding(.leading, 16)
                            .font(.system(size: 12.0))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        Text("Don't miss these BGMI event")
                            .font(.system(size: 32.0))
                            .padding(.leading, 16)
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        Text("See what's on right now")
                            .font(.system(size: 12.0))
                            .padding(EdgeInsets(top: 0.0, leading: 16.0, bottom: 8.0, trailing: 16.0))
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    HStack {
                        RoundedRectangle(cornerRadius: 8)
                            .frame(width: 50, height: 50)
                            .foregroundColor(.accentColor)
                            .padding([.leading, .bottom, .top])
                        VStack(spacing: 0) {
                            HStack {
                                Text("BATTLEGROUNDS\nMOBILE INDIA")
                                    .font(.subheadline).bold()
                                    .lineLimit(2)
                                Spacer()
                            }
                            HStack {
                                Text("INDIA KA BATTLEGROUND")
                                    .font(.subheadline)
                                    .truncationMode(.tail)
                                    .lineLimit(1)
                                Spacer()
                            }
                        }
                        .frame(width: 180)
                        Spacer()
                        Image(systemName: "icloud.and.arrow.down")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                            .padding([.leading, .bottom, .trailing, .top])
                            .foregroundColor(.white)
                    }.background(.yellow)
                }.foregroundStyle(.white)
            }
        }
        .cornerRadius(20)
        .frame(height: UIScreen.main.bounds.height * 0.5)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    CardView()
}
