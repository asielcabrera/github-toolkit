//
//  NotificationReason.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

extension Notification {
  public enum Reason: String, Codable, Sendable {
    case subscribed
    case stateChange =  "state_change"
    case author
    case mention
  }
}
