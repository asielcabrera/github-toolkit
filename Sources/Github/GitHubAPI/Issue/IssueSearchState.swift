//
//  IssueSearchState.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum IssueSearchState: String, CaseIterable, Identifiable, Sendable {
  case open
  case closed
  case all
  
  public var id: Self { self }
}
