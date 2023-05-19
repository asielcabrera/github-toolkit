//
//  TypedResponse.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/16/23.
//

import Foundation

public protocol TypedResponse: T {
    var statusCode: Int
    var result: T
//    var headers: IncomingHttpHeaders
}
