//
//  AuthorAssociation.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public enum AuthorAssociation: String, Codable, Sendable {
  case collaborator = "COLLABORATOR"
  case contributor = "CONTRIBUTOR"
  case firstTimer = "FIRST_TIMER"
  case firstTimeContributor = "FIRST_TIME_CONTRIBUTOR"
  case mannequin = "MANNEQUIN"
  case member = "MEMBER"
  case none = "NONE"
  case owner = "OWNER"
}
