//
//  MergeState.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

extension AutoMerge {
  public enum Method: String, Codable, Sendable {
    case merge, squash, rebase
  }
}
