//
//  RequestInfo.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/16/23.
//

import Foundation

public protocol RequestInfo {
    var options: RequestOptions
    var parsedUrl: URL
    var httpModule: HttpModule
}


enum HttpModule {
    case http
    case https
}
