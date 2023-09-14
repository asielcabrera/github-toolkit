//
//  AutoMerge.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct AutoMerge: Codable, Hashable, Sendable {
    public let enabledBy: User
    public let method: Method
    public let commitTitle: String?
    public let commitMessage: String
    
    public init(enabledBy: User, method: Method, commitTitle: String?, commitMessage: String) {
        self.enabledBy = enabledBy
        self.method = method
        self.commitTitle = commitTitle
        self.commitMessage = commitMessage
    }
    
    private enum CodingKeys: String, CodingKey {
        case enabledBy = "enabled_by", method = "merge_method", commitTitle = "commit_title", commitMessage = "commit_message"
    }
}
