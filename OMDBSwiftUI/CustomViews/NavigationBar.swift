//
//  NavigationBar.swift
//  OMDBSwiftUI
//
//  Created by Akshay  on 13/10/24.
//

import SwiftUI

struct NavigationBar: View {
    var body: some View {
        var todayDate: String {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "d MMMM"
            return dateFormatter.string(from: Date())
        }
        NavigationView {
            List {
                CardView()
                    .listRowSeparator(.hidden)
                HorizontalBanner()
                    .listRowSeparator(.hidden)
            }
            .listStyle(.plain)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("Today")
                        .font(.largeTitle).bold()
                    
                }
                ToolbarItem(placement: .navigationBarLeading) {
                    Text("\(todayDate)")
                        .foregroundStyle(.gray)
                        .font(.system(size: 24, weight: .bold))
                }
                ToolbarItem(placement: .navigationBarTrailing) {
                    HStack {
                        Image(systemName: "person.circle.fill")
                            .resizable()
                            .frame(width: 40, height: 40)
                            .clipShape(Circle())
                    }
                }
            }
        }
    }
}

#Preview {
    NavigationBar()
}
