//
//  OrganizationRepositorySearchType.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum OrganizationRepositorySearchType: String, Sendable {
  case all
  case `public`
  case `private`
  case forks
  case sources
  case member
}

