//
//  HttpClientProtocol.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 5/16/23.
//

import Foundation

public protocol HttpClient {
    func options() {}
    func `get`() {}
    func del() {}
    func post(){}
    func patch(){}
    func put(){}
    func request(){}
    func requestRaw(){}
    func requestRawWithCallback() {}
}
