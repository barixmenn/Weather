//
//  Convert+Extensions.swift
//  Weather
//
//  Created by Baris on 27.06.2023.
//

import Foundation


// Extension for rounded Double to 0 decimals
extension Double {
    func roundDouble() -> String {
        return String(format: "%.0f", self)
    }
}

