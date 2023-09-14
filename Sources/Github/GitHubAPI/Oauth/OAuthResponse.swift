//
//  OAuthResponse.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct OAuthResponse: Decodable, Sendable {
  public let accessToken: String
  public let scopes: [Scope]
  public let tokenType: TokenType
  
  private enum CodingKeys: String, CodingKey {
    case accessToken = "access_token"
    case scopes = "scope"
    case tokenType = "token_type"
  }
  
  public init(from decoder: any Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    self.accessToken = try container.decode(String.self, forKey: .accessToken)
    let rawScopes = try container.decode(String.self, forKey: .scopes)
    self.scopes = rawScopes.split(separator: ",").map { .init(rawValue: String($0))! }
    
    let rawTokenType = try container.decode(String.self, forKey: .tokenType)
    self.tokenType = .init(rawValue: rawTokenType)!
  }
}
