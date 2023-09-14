//
//  PullSortType.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum PullSortType: String, Sendable {
  case created
  case updated
  case popularity
  case longRunning = "long-running"
}
