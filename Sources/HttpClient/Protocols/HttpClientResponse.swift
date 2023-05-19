//
//  HttpClientResponse.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/16/23.
//

import Foundation

class HttpClientResponse {
    var message: IncomeMessage
    
    init(message: IncomeMessage) {
        self.message = message
    }
    
    public func readBody() -> String async  {
        return ""
    }
}
