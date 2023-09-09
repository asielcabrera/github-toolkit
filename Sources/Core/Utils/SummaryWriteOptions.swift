//
//  SummaryWriteOptions.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/9/23.
//

/**
 Options for write operation in the Summary class.
 */
struct SummaryWriteOptions {
    /**
     Indicates whether to overwrite all existing content in the summary file with the buffer contents.
     - Default: `false`
     */
    let overwrite: Bool
}
