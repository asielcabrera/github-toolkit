//
//  OAuthRequest.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

/// OAuth
/// https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/authorizing-oauth-apps#1-request-a-users-github-identity
@available(macOS 13.0, *)
public struct OAuthRequest: Sendable {
  public var baseURL = URL(string: "https://github.com")!
  public let path = "login/oauth/authorize"
  public var clientID: String
  public var redirectURL: URL?
  public var userID: String?
  public var scopes: [Scope]
  public var state: String?
  public var allowSignUp: Bool
  
  public init(
    clientID: String,
    redirectURL: URL? = nil,
    userID: String? = nil,
    scopes: [Scope] = [],
    state: String? = nil,
    allowSignUp: Bool = true
  ) {
    self.clientID = clientID
    self.redirectURL = redirectURL
    self.userID = userID
    self.scopes = scopes
    self.state = state
    self.allowSignUp = allowSignUp
  }
  
  public func authorizingURL() -> URL {
    let endpoint = baseURL.appending(path: path)
    var queries: [String: String] = [
      "client_id": clientID,
      "allow_signup": allowSignUp.description,
    ]
    
    redirectURL.map { queries["redirect_uri"] = $0.absoluteString }
    userID.map { queries["login"] = $0 }
    state.map { queries["state"] = $0 }
    
    if !scopes.isEmpty {
      queries["scope"] = scopes.map(\.rawValue).joined(separator: " ")
    }
    
    var urlComponents = URLComponents(url: endpoint, resolvingAgainstBaseURL: true)!
    urlComponents.queryItems = queries.map { .init(name: $0.key, value: $0.value) }
    
    
    return urlComponents.url!
  }
}
