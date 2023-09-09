//
//  AnnotationProperties.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

/**
 * Optional properties that can be sent with annotation commands (notice, error, and warning)
 * See: https://docs.github.com/en/rest/reference/checks#create-a-check-run for more information about annotations.
 */
public struct AnnotationProperties {
  /**
   * A title for the annotation.
   */
  let title: String?

  /**
   * The path of the file for which the annotation should be created.
   */
    let file: String?

  /**
   * The start line for the annotation.
   */
    let startLine: Int?

  /**
   * The end line for the annotation. Defaults to `startLine` when `startLine` is provided.
   */
    let endLine: Int?

  /**
   * The start column for the annotation. Cannot be sent when `startLine` and `endLine` are different values.
   */
    let startColumn: Int?

  /**
   * The end column for the annotation. Cannot be sent when `startLine` and `endLine` are different values.
   * Defaults to `startColumn` when `startColumn` is provided.
   */
    let endColumn: Int?
}
