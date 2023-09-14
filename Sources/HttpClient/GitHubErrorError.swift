//
//  GitHubError.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation
import HTTPTypes

public enum GitHubError: Error, Sendable {
  case request(request: HTTPRequest)
  case decode(data: Data, response: HTTPResponse)
}
