//
//  RepositorySortType.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum RepositorySortType: String, Sendable {
  case created
  case updated
  case pushed
  case fullName = "full_name"
}
