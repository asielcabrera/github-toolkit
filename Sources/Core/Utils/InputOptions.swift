//
//  InputOptions.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

/**
 * Struct for getInput options
 */
public struct InputOptions {
  /** Optional. Whether the input is required. If required and not present, will throw. Defaults to false */
  let required: Bool?

  /** Optional. Whether leading/trailing whitespace will be trimmed for the input. Defaults to true */
  let trimWhitespace: Bool?
}
