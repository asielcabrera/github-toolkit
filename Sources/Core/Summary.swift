//
//  Summary.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

import Foundation

/**
 * The summary class is used to construct a summary file for a GitHub Action workflow step.
 * The summary can include various types of content, such as text, code blocks, lists, tables, and more.
 */
class Summary {
    private var buffer: String
    private var filePath: String?
    
    /**
     * Initializes a new instance of the Summary class.
     */
    init() {
        self.buffer = ""
    }
    
    /**
     * Finds the summary file path from the environment, rejects if env var is not found or file does not exist.
     * Also checks read/write permissions.
     *
     * - Returns: Step summary file path.
     */
    private func getfilePath() throws -> String {
        return ""
    }
    
    /**
     * Writes text in the buffer to the summary buffer file and empties the buffer. Will append by default.
     *
     * - Parameter options: Options for write operation (optional, default: nil).
     *
     * - Returns: Summary instance.
     */
    func write(options: SummaryWriteOptions? = nil) throws -> Summary? {
        return nil
    }
    
    /**
     * Clears the summary buffer and wipes the summary file.
     *
     * - Returns: Summary instance.
     */
    func clear() throws -> Summary? {
        return nil
    }
}

extension Core {
    static var summary: Summary { Summary() }
}
