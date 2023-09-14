//
//  UnknownError.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct UnknownError: Error, Sendable {
  public let decodeError: any Error
  public let data: Data
}
