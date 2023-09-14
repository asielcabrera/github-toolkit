//
//  SecurityAnalytics.swift
//
//
//  Created by Asiel Cabrera Gonzalez on 9/14/23.
//

import Foundation

public struct SecurityAnalytics: Codable, Sendable, Hashable {
  public let advancedSecurity: Bool?
  public let dependabotSecurityUpdates: Bool
  public let secretScanning: Bool
  public let secretScanningPushProtection: Bool
  
  private enum CodingKeys: String, CodingKey {
    case advancedSecurity = "advanced_security"
    case dependabotSecurityUpdates = "dependabot_security_updates"
    case secretScanning = "secret_scanning"
    case secretScanningPushProtection = "secret_scanning_push_protection"
  }
  
  private enum StatusCodingKeys: CodingKey {
    case status
  }
  
  private enum Status: String, Codable {
    case enabled
    case disabled
  }
  
  public init(
    advancedSecurity: Bool?,
    dependabotSecurityUpdates: Bool,
    secretScanning: Bool,
    secretScanningPushProtection: Bool
  ) {
    self.advancedSecurity = advancedSecurity
    self.dependabotSecurityUpdates = dependabotSecurityUpdates
    self.secretScanning = secretScanning
    self.secretScanningPushProtection = secretScanningPushProtection
  }
  
  public init(from decoder: any Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    do {
      let nestedContainer = try? container.nestedContainer(keyedBy: StatusCodingKeys.self, forKey: .advancedSecurity)
      self.advancedSecurity = try nestedContainer?.decode(Status.self,forKey: .status) == .enabled
    }
    do {
      let nestedContainer = try container.nestedContainer(keyedBy: StatusCodingKeys.self, forKey: .dependabotSecurityUpdates)
      self.dependabotSecurityUpdates = try nestedContainer.decode(Status.self,forKey: .status) == .enabled
    }
    do {
      let nestedContainer = try container.nestedContainer(keyedBy: StatusCodingKeys.self, forKey: .secretScanning)
      self.secretScanning = try nestedContainer.decode(Status.self,forKey: .status) == .enabled
    }
    do {
      let nestedContainer = try container.nestedContainer(keyedBy: StatusCodingKeys.self, forKey: .secretScanningPushProtection)
      self.secretScanningPushProtection = try nestedContainer.decode(Status.self,forKey: .status) == .enabled
    }
  }
  
  public func encode(to encoder: any Encoder) throws {
    var container = encoder.container(keyedBy: CodingKeys.self)
    do {
      var nestedContainer = container.nestedContainer(keyedBy: StatusCodingKeys.self, forKey: .advancedSecurity)
      if let advancedSecurity {
        let value: Status = advancedSecurity ? .enabled : .disabled
        try nestedContainer.encode(value.rawValue, forKey: .status)
      }
    }
    do {
      var nestedContainer = container.nestedContainer(keyedBy: StatusCodingKeys.self, forKey: .dependabotSecurityUpdates)
      let value: Status = dependabotSecurityUpdates ? .enabled : .disabled
      try nestedContainer.encode(value.rawValue, forKey: .status)
    }
    do {
      var nestedContainer = container.nestedContainer(keyedBy: StatusCodingKeys.self, forKey: .secretScanning)
      let value: Status = secretScanning ? .enabled : .disabled
      try nestedContainer.encode(value.rawValue, forKey: .status)
    }
    do {
      var nestedContainer = container.nestedContainer(keyedBy: StatusCodingKeys.self, forKey: .secretScanningPushProtection)
      let value: Status = secretScanningPushProtection ? .enabled : .disabled
      try nestedContainer.encode(value.rawValue, forKey: .status)
    }
  }
}
