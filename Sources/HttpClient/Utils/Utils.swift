//
//  File.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/16/23.
//

import Foundation

struct Utils {
    let HttpRedirectCodes: [Int] = [
        HttpCodes.MovedPermanently,
        HttpCodes.ResourceMoved,
        HttpCodes.SeeOther,
        HttpCodes.TemporaryRedirect,
        HttpCodes.PermanentRedirect
      ]
    
    let HttpResponseRetryCodes: [Int] = [
        HttpCodes.BadGateway,
        HttpCodes.ServiceUnavailable,
        HttpCodes.GatewayTimeout
      ]
    
    let RetryableHttpVerbs: [String] = ["OPTIONS", "GET", "DELETE", "HEAD"]
    let ExponentialBackoffCeiling = 10
    let ExponentialBackoffTimeSlice = 5
}
