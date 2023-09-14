//
//  TemplateRepository.swift
//  
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct TemplateRepository: Codable, Sendable, Hashable, Identifiable {
  public let id: Int
  public let nodeID: String
  public let name: String
  public let fullName: String
  public let isPrivate: Bool
  public let owner: User?
  public let organization: User?
  public let htmlURL: URL
  public let description: String?
  public let isFork: Bool
  public let url: URL
  public let forksURL: URL
  public let keysURL: URL
  public let collaboratorsURL: URL
  public let teamsURL: URL
  public let hooksURL: URL
  public let issueEventsURL: URL
  public let eventsURL: URL
  public let assigneesURL: URL
  public let branchesURL: URL
  public let tagsURL: URL
  public let blobsURL: URL
  public let gitTagsURL: URL
  public let gitRefsURL: URL
  public let treesURL: URL
  public let statusesURL: URL
  public let languagesURL: URL
  public let stargazersURL: URL
  public let contributorsURL: URL
  public let subscribersURL: URL
  public let subscriptionURL: URL
  public let commitsURL: URL
  public let gitCommitsURL: URL
  public let commentsURL: URL
  public let issueCommentURL: URL
  public let contentsURL: URL
  public let compareURL: URL
  public let mergesURL: URL
  public let archiveURL: URL
  public let downloadsURL: URL
  public let issuesURL: URL
  public let pullsURL: URL
  public let milestonesURL: URL
  public let notificationsURL: URL
  public let labelsURL: URL
  public let releasesURL: URL
  public let deploymentsURL: URL
  public let createdAt: Date?
  public let updatedAt: Date?
  public let pushedAt: Date?
  public let gitURL: URL?
  public let sshURL: URL?
  public let cloneURL: URL?
  public let svnURL: URL?
  public let homepage: String?
  public let size: Int?
  public let stargazersCount: Int?
  public let watchersCount: Int?
  public let language: String?
  public let hasIssues: Bool
  public let hasProjects: Bool
  public let hasDownloads: Bool
  public let hasWiki: Bool
  public let hasPages: Bool
  public let hasDiscussions: Bool
  public let forksCount: Int?
  public let mirrorURL: URL?
  public let isArchived: Bool?
  public let disabled: Bool?
  public let openIssuesCount: Int?
  public let isTemplate: Bool?
  public let webCommitSignoffRequired: Bool?
  public let topics: [String]?
  public let visibility: Visibility?
  public let defaultBranch: String?
  public let permissions: Permission?
  public let roleName: Role?
  public let tempCloneToken: String?
  public let deleteBranchOnMerge: Bool?
  public let subscribersCount: Int?
  public let networkCount: Int?
  public let codeConduct: CodeConduct?
  public let securityAnalytics: SecurityAnalytics?
  public let anonymousAccessEnabled: Bool?
  public let starredAt: Date?
  public let masterBranch: String?
  public let allowMergeCommit: Bool?
  public let mergeCommitMessage: MergeCommitMessage?
  public let mergeCommitTitle: MergeCommitTitle?
  public let squashMergeCommitMessage: SquashMergeCommitMessage?
  public let squashMergeCommitTitle: SquashMergeCommitTitle?
  public let useSquashPrTitleAsDefault: Bool?
  public let allowUpdateBranch: Bool?
  public let allowAutoMerge: Bool?
  public let allowSquashMerge: Bool?
  public let allowRebaseMerge: Bool?
  
  public init(
    id: Int,
    nodeID: String,
    name: String,
    fullName: String,
    isPrivate: Bool,
    owner: User?,
    organization: User?,
    htmlURL: URL,
    description: String?,
    isFork: Bool,
    url: URL,
    forksURL: URL,
    keysURL: URL,
    collaboratorsURL: URL,
    teamsURL: URL,
    hooksURL: URL,
    issueEventsURL: URL,
    eventsURL: URL,
    assigneesURL: URL,
    branchesURL: URL,
    tagsURL: URL,
    blobsURL: URL,
    gitTagsURL: URL,
    gitRefsURL: URL,
    treesURL: URL,
    statusesURL: URL,
    languagesURL: URL,
    stargazersURL: URL,
    contributorsURL: URL,
    subscribersURL: URL,
    subscriptionURL: URL,
    commitsURL: URL,
    gitCommitsURL: URL,
    commentsURL: URL,
    issueCommentURL: URL,
    contentsURL: URL,
    compareURL: URL,
    mergesURL: URL,
    archiveURL: URL,
    downloadsURL: URL,
    issuesURL: URL,
    pullsURL: URL,
    milestonesURL: URL,
    notificationsURL: URL,
    labelsURL: URL,
    releasesURL: URL,
    deploymentsURL: URL,
    createdAt: Date?,
    updatedAt: Date?,
    pushedAt: Date?,
    gitURL: URL?,
    sshURL: URL?,
    cloneURL: URL?,
    svnURL: URL?,
    homepage: String?,
    size: Int?,
    stargazersCount: Int?,
    watchersCount: Int?,
    language: String?,
    hasIssues: Bool,
    hasProjects: Bool,
    hasDownloads: Bool,
    hasWiki: Bool,
    hasPages: Bool,
    hasDiscussions: Bool,
    forksCount: Int?,
    mirrorURL: URL?,
    isArchived: Bool?,
    disabled: Bool?,
    openIssuesCount: Int?,
    isTemplate: Bool?,
    webCommitSignoffRequired: Bool?,
    topics: [String]?,
    visibility: Visibility?,
    defaultBranch: String?,
    permissions: Permission?,
    roleName: Role?,
    tempCloneToken: String?,
    deleteBranchOnMerge: Bool?,
    subscribersCount: Int?,
    networkCount: Int?,
    codeConduct: CodeConduct?,
    securityAnalytics: SecurityAnalytics?,
    anonymousAccessEnabled: Bool?,
    starredAt: Date?,
    masterBranch: String?,
    allowMergeCommit: Bool?,
    mergeCommitMessage: MergeCommitMessage?,
    mergeCommitTitle: MergeCommitTitle?,
    squashMergeCommitMessage: SquashMergeCommitMessage?,
    squashMergeCommitTitle: SquashMergeCommitTitle?,
    useSquashPrTitleAsDefault: Bool?,
    allowUpdateBranch: Bool?,
    allowAutoMerge: Bool?,
    allowSquashMerge: Bool?,
    allowRebaseMerge: Bool?
  ) {
    self.id = id
    self.nodeID = nodeID
    self.name = name
    self.fullName = fullName
    self.isPrivate = isPrivate
    self.owner = owner
    self.organization = organization
    self.htmlURL = htmlURL
    self.description = description
    self.isFork = isFork
    self.url = url
    self.forksURL = forksURL
    self.keysURL = keysURL
    self.collaboratorsURL = collaboratorsURL
    self.teamsURL = teamsURL
    self.hooksURL = hooksURL
    self.issueEventsURL = issueEventsURL
    self.eventsURL = eventsURL
    self.assigneesURL = assigneesURL
    self.branchesURL = branchesURL
    self.tagsURL = tagsURL
    self.blobsURL = blobsURL
    self.gitTagsURL = gitTagsURL
    self.gitRefsURL = gitRefsURL
    self.treesURL = treesURL
    self.statusesURL = statusesURL
    self.languagesURL = languagesURL
    self.stargazersURL = stargazersURL
    self.contributorsURL = contributorsURL
    self.subscribersURL = subscribersURL
    self.subscriptionURL = subscriptionURL
    self.commitsURL = commitsURL
    self.gitCommitsURL = gitCommitsURL
    self.commentsURL = commentsURL
    self.issueCommentURL = issueCommentURL
    self.contentsURL = contentsURL
    self.compareURL = compareURL
    self.mergesURL = mergesURL
    self.archiveURL = archiveURL
    self.downloadsURL = downloadsURL
    self.issuesURL = issuesURL
    self.pullsURL = pullsURL
    self.milestonesURL = milestonesURL
    self.notificationsURL = notificationsURL
    self.labelsURL = labelsURL
    self.releasesURL = releasesURL
    self.deploymentsURL = deploymentsURL
    self.createdAt = createdAt
    self.updatedAt = updatedAt
    self.pushedAt = pushedAt
    self.gitURL = gitURL
    self.sshURL = sshURL
    self.cloneURL = cloneURL
    self.svnURL = svnURL
    self.homepage = homepage
    self.size = size
    self.stargazersCount = stargazersCount
    self.watchersCount = watchersCount
    self.language = language
    self.hasIssues = hasIssues
    self.hasProjects = hasProjects
    self.hasDownloads = hasDownloads
    self.hasWiki = hasWiki
    self.hasPages = hasPages
    self.hasDiscussions = hasDiscussions
    self.forksCount = forksCount
    self.mirrorURL = mirrorURL
    self.isArchived = isArchived
    self.disabled = disabled
    self.openIssuesCount = openIssuesCount
    self.isTemplate = isTemplate
    self.webCommitSignoffRequired = webCommitSignoffRequired
    self.topics = topics
    self.visibility = visibility
    self.defaultBranch = defaultBranch
    self.permissions = permissions
    self.roleName = roleName
    self.tempCloneToken = tempCloneToken
    self.deleteBranchOnMerge = deleteBranchOnMerge
    self.subscribersCount = subscribersCount
    self.networkCount = networkCount
    self.codeConduct = codeConduct
    self.securityAnalytics = securityAnalytics
    self.anonymousAccessEnabled = anonymousAccessEnabled
    self.starredAt = starredAt
    self.masterBranch = masterBranch
    self.allowMergeCommit = allowMergeCommit
    self.mergeCommitMessage = mergeCommitMessage
    self.mergeCommitTitle = mergeCommitTitle
    self.squashMergeCommitMessage = squashMergeCommitMessage
    self.squashMergeCommitTitle = squashMergeCommitTitle
    self.useSquashPrTitleAsDefault = useSquashPrTitleAsDefault
    self.allowUpdateBranch = allowUpdateBranch
    self.allowAutoMerge = allowAutoMerge
    self.allowSquashMerge = allowSquashMerge
    self.allowRebaseMerge = allowRebaseMerge
  }
  
  private enum CodingKeys: String, CodingKey {
    case id
    case nodeID = "node_id"
    case name
    case fullName = "full_name"
    case isPrivate = "private"
    case owner
    case organization
    case htmlURL = "html_url"
    case description
    case isFork = "fork"
    case url
    case forksURL = "forks_url"
    case keysURL = "keys_url"
    case collaboratorsURL = "collaborators_url"
    case teamsURL = "teams_url"
    case hooksURL = "hooks_url"
    case issueEventsURL = "issue_events_url"
    case eventsURL = "events_url"
    case assigneesURL = "assignees_url"
    case branchesURL = "branches_url"
    case tagsURL = "tags_url"
    case blobsURL = "blobs_url"
    case gitTagsURL = "git_tags_url"
    case gitRefsURL = "git_refs_url"
    case treesURL = "trees_url"
    case statusesURL = "statuses_url"
    case languagesURL = "languages_url"
    case stargazersURL = "stargazers_url"
    case contributorsURL = "contributors_url"
    case subscribersURL = "subscribers_url"
    case subscriptionURL = "subscription_url"
    case commitsURL = "commits_url"
    case gitCommitsURL = "git_commits_url"
    case commentsURL = "comments_url"
    case issueCommentURL = "issue_comment_url"
    case contentsURL = "contents_url"
    case compareURL = "compare_url"
    case mergesURL = "merges_url"
    case archiveURL = "archive_url"
    case downloadsURL = "downloads_url"
    case issuesURL = "issues_url"
    case pullsURL = "pulls_url"
    case milestonesURL = "milestones_url"
    case notificationsURL = "notifications_url"
    case labelsURL = "labels_url"
    case releasesURL = "releases_url"
    case deploymentsURL = "deployments_url"
    case createdAt = "created_at"
    case updatedAt = "updated_at"
    case pushedAt = "pushed_at"
    case gitURL = "git_url"
    case sshURL = "ssh_url"
    case cloneURL = "clone_url"
    case svnURL = "svn_url"
    case homepage
    case size
    case stargazersCount = "stargazers_count"
    case watchersCount = "watchers_count"
    case language
    case hasIssues = "has_issues"
    case hasProjects = "has_projects"
    case hasDownloads = "has_downloads"
    case hasWiki = "has_wiki"
    case hasPages = "has_pages"
    case hasDiscussions = "has_discussions"
    case forksCount = "forks_count"
    case mirrorURL = "mirror_url"
    case isArchived = "archived"
    case disabled
    case openIssuesCount = "open_issues_count"
    case isTemplate = "is_template"
    case webCommitSignoffRequired  = "web_commit_signoff_required"
    case topics
    case visibility
    case defaultBranch = "default_branch"
    case permissions
    case roleName = "role_name"
    case tempCloneToken = "temp_clone_token"
    case deleteBranchOnMerge = "delete_branch_on_merge"
    case subscribersCount = "subscribers_count"
    case networkCount = "network_count"
    case codeConduct = "code_of_conduct"
    case securityAnalytics = "security_and_analysis"
    case anonymousAccessEnabled = "anonymous_access_enabled"
    case starredAt = "starred_at"
    case masterBranch = "master_branch"
    case allowMergeCommit = "allow_merge_commit"
    case mergeCommitMessage = "merge_commit_message"
    case mergeCommitTitle = "merge_commit_title"
    case squashMergeCommitMessage = "squash_merge_commit_message"
    case squashMergeCommitTitle = "squash_merge_commit_title"
    case useSquashPrTitleAsDefault = "use_squash_pr_title_as_default"
    case allowUpdateBranch = "allow_update_branch"
    case allowAutoMerge = "allow_auto_merge"
    case allowSquashMerge = "allow_squash_merge"
    case allowRebaseMerge = "allow_rebase_merge"
  }
}
