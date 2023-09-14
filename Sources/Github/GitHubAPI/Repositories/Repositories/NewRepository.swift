//
//  NewRepository.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct NewRepository: Encodable, Sendable {
  public var name: String
  public var description: String?
  public var homepage: String?
  public var isPrivate: Bool
  public var hasIssues: Bool
  public var hasProjects: Bool
  public var hasWiki: Bool
  public var hasDiscussions: Bool
  public var teamID: String?
  public var autoInit: Bool
  public var gitignoreTemplate: String?
  public var licenseTemplate: String?
  public var allowSquashMerge: Bool
  public var allowMergeCommit: Bool
  public var allowRebaseMerge: Bool
  public var allowAutoMerge: Bool
  public var deleteBranchOnMerge: Bool
  public var squashMergeCommitTitle: SquashMergeCommitTitle?
  public var squashMergeCommitMessage: SquashMergeCommitMessage?
  public var mergeCommitTitle: MergeCommitTitle?
  public var mergeCommitMessage: MergeCommitMessage?
  public var hasDownloads: Bool
  public var isTemplate: Bool
  
  public init(
    name: String,
    description: String? = nil,
    homepage: String? = nil,
    isPrivate: Bool = false,
    hasIssues: Bool = true,
    hasProjects: Bool = true,
    hasWiki: Bool = true,
    hasDiscussions: Bool = false,
    teamID: String? = nil,
    autoInit: Bool = false,
    gitignoreTemplate: String? = nil,
    licenseTemplate: String? = nil,
    allowSquashMerge: Bool = true,
    allowMergeCommit: Bool = true,
    allowRebaseMerge: Bool = true,
    allowAutoMerge: Bool = false,
    deleteBranchOnMerge: Bool = false,
    squashMergeCommitTitle: SquashMergeCommitTitle? = nil,
    squashMergeCommitMessage: SquashMergeCommitMessage? = nil,
    mergeCommitTitle: MergeCommitTitle? = nil,
    mergeCommitMessage: MergeCommitMessage? = nil,
    hasDownloads: Bool = true,
    isTemplate: Bool = false
  ) {
    self.name = name
    self.description = description
    self.homepage = homepage
    self.isPrivate = isPrivate
    self.hasIssues = hasIssues
    self.hasProjects = hasProjects
    self.hasWiki = hasWiki
    self.hasDiscussions = hasDiscussions
    self.teamID = teamID
    self.autoInit = autoInit
    self.gitignoreTemplate = gitignoreTemplate
    self.licenseTemplate = licenseTemplate
    self.allowSquashMerge = allowSquashMerge
    self.allowMergeCommit = allowMergeCommit
    self.allowRebaseMerge = allowRebaseMerge
    self.allowAutoMerge = allowAutoMerge
    self.deleteBranchOnMerge = deleteBranchOnMerge
    self.squashMergeCommitTitle = squashMergeCommitTitle
    self.squashMergeCommitMessage = squashMergeCommitMessage
    self.mergeCommitTitle = mergeCommitTitle
    self.mergeCommitMessage = mergeCommitMessage
    self.hasDownloads = hasDownloads
    self.isTemplate = isTemplate
  }
  
  private enum CodingKeys: String, CodingKey {
    case name
    case description
    case homepage
    case isPrivate = "private"
    case hasIssues = "has_issues"
    case hasProjects = "has_projects"
    case hasWiki = "has_wiki"
    case hasDiscussions = "has_discussions"
    case teamID = "team_id"
    case autoInit = "auto_init"
    case gitignoreTemplate = "gitignore_template"
    case licenseTemplate = "license_template"
    case allowSquashMerge = "allow_squash_merge"
    case allowMergeCommit = "allow_merge_commit"
    case allowRebaseMerge = "allow_rebase_merge"
    case allowAutoMerge = "allow_auto_merge"
    case deleteBranchOnMerge = "delete_branch_on_merge"
    case squashMergeCommitTitle = "squash_merge_commit_title"
    case squashMergeCommitMessage = "squash_merge_commit_message"
    case mergeCommitTitle = "merge_commit_title"
    case mergeCommitMessage = "merge_commit_message"
    case hasDownloads = "has_downloads"
    case isTemplate = "is_template"
  }
}
