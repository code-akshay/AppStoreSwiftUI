//
//  Item.swift
//  OMDBSwiftUI
//
//  Created by Akshay  on 12/10/24.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
