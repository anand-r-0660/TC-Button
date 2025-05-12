import Foundation
import React

@objc(ButtonSDK)
class ButtonSDK: NSObject {
  private var apiKey: String?
  
  @objc
  func initialize(_ config: [String: Any], 
                 resolver resolve: @escaping RCTPromiseResolveBlock,
                 rejecter reject: @escaping RCTPromiseRejectBlock) {
    guard let apiKey = config["apiKey"] as? String else {
      reject("INVALID_CONFIG", "API key is required", nil)
      return
    }
    
    self.apiKey = apiKey
    resolve(nil)
  }
  
  @objc
  func showButton(_ options: [String: Any],
                 resolver resolve: @escaping RCTPromiseResolveBlock,
                 rejecter reject: @escaping RCTPromiseRejectBlock) {
    guard let title = options["title"] as? String else {
      reject("INVALID_OPTIONS", "Title is required", nil)
      return
    }
    
    // Here you would implement the actual button creation and display logic
    // This is just a placeholder implementation
    print("Showing button with title: \(title)")
    resolve(nil)
  }
  
  @objc
  static func requiresMainQueueSetup() -> Bool {
    return true
  }
} 