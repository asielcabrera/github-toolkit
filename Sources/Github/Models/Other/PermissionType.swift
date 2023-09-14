//
//  PermissionType.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum PermissionType: String, Codable, Sendable {
  case pull
  case triage
  case push
  case maintain
  case admin
}
