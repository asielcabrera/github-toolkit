//
//  HTTPRequest++.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation
import HTTPTypes
import HTTPTypesFoundation

public extension HTTPRequest {
  init(
    method: HTTPRequest.Method,
    url: URL,
    queries: [String: String],
    headers: [String: String]
  ) {
    var components = URLComponents(url: url, resolvingAgainstBaseURL: true)!
    components.queryItems = queries.map { .init(name: $0.key, value: $0.value) }
    
    let headerFields: HTTPFields = headers.reduce(into: HTTPFields()) { fields, dic in
      fields[HTTPField.Name(dic.key)!] = dic.value
    }
    
    self.init(method: method, url: components.url!, headerFields: headerFields)
  }
}
