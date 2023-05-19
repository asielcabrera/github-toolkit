//
//  HttpClientError.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/16/23.
//

import Foundation


enum HttpClientError: Error {
    var statusCode: Int
    var result?: any
}
