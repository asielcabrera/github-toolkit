//
//  SubscriptionState.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum SubscriptionState: String, Codable, Sendable {
  case ignored = "IGNORED"
  case subscribed = "SUBSCRIBED"
  case unSubscribed = "UNSUBSCRIBED"
}
