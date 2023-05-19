//
//  RequestOptions.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/16/23.
//

import Foundation

public protocol RequestOptions {
//    var headers?: OutgoingHttpHeaders
    var  socketTimeout: Int?
    var   ignoreSslError: Bool?
    var  allowRedirects: Bool?
    var  allowRedirectDowngrade: Bool?
    var  maxRedirects: Int?
    var maxSockets: Int?
    var  keepAlive: Bool?
    var  deserializeDates: Bool?
    // Allows retries only on Read operations (since writes may not be idempotent)
    var    allowRetries: Bool?
    var   maxRetries: Int?
}
