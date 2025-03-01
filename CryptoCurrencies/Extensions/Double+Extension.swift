//
//  Double+Extension.swift
//  CryptoCurrencies
//
//  Created by Vinay on 30/12/24.
//

import Foundation

extension Double {
    
    /**
     Returns currency of double value in string with the specified locale.
         - Parameter locale: specific currency locale, defaults to US currency
         - Returns: String in the given local currency.
    */
    func toCurrencyString(locale: Locale = Locale(identifier: "en_US")) -> String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .currency
        formatter.locale = locale
        
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        
        return formatter.string(from: NSNumber(value: self)) ?? ""
    }
}
