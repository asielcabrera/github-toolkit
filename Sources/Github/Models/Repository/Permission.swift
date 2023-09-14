//
//  Permission.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct Permission: Codable, Hashable, Sendable {
  public let admin: Bool
  public let maintain: Bool
  public let push: Bool
  public let triage: Bool
  public let pull: Bool
  
  public init(
    admin: Bool,
    maintain: Bool,
    push: Bool,
    triage: Bool,
    pull: Bool
  ) {
    self.admin = admin
    self.maintain = maintain
    self.push = push
    self.triage = triage
    self.pull = pull
  }
}
