//
//  AuthorizationType.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum AuthorizationType: Sendable {
  case bearerToken(accessToken: String)
  case withoutToken
}
