//
//  UserType.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum UserType: String, Codable, Sendable {
  case user = "User"
  case organization = "Organization"
  case mannequin = "Mannequin"
  case bot = "Bot"
}
