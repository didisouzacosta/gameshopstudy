//
//  Double+Extension.swift
//  GameShopStudy
//
//  Created by ProDoctor on 18/01/23.
//

import Foundation

extension Double {
    
    func formatedPrice() -> String? {
        let formatter = NumberFormatter()
        formatter.locale = .current
        formatter.numberStyle = .currency
        return formatter.string(from: self as NSNumber)
    }
    
}
