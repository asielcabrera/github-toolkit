//
//  Scope.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

// Scope
/// https://docs.github.com/en/apps/oauth-apps/building-oauth-apps/scopes-for-oauth-apps
public enum Scope: String, CaseIterable, Sendable {
  case repo
  case repoStatus
  case repoDeployment = "repo_deployment"
  case publicRepo = "public_repo"
  case repoInvite = "repo:invite"
  case securityEvents = "security_events"
  case adminRepoHook = "admin:repo_hook"
  case writeRepoHook = "write:repo_hook"
  case readRepoHook = "read:repo_hook"
  case adminOrg = "admin:org"
  case writeOrg = "write:org"
  case readOrg = "read:org"
  case adminPublicKey = "admin:public_key"
  case writePublicKey = "write:public_key"
  case readPublicKey = "readPublicKey"
  case adminOrgHook = "admin:org_hook"
  case gist
  case notifications
  case user
  case readUser = "read.user"
  case userEmail = "user.email"
  case userFollow = "user:follow"
  case project
  case readProject = "read:project"
  case deleteRepo = "delete_repo"
  case writePackage = "write:packages"
  case readPackage = "read:packages"
  case deletePackage = "delete:packages"
  case adminGpgKey = "admin:gpg_key"
  case writeGpgKey = "write:gpg_key"
  case readGpgKey = "read:gpg_key"
  case codespace
  case workflow
}
