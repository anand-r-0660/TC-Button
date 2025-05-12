import Foundation
import UIKit

@objc public class ButtonSDK: NSObject {
    @objc public static func initialize(apiKey: String) {
        // Store or use the API key as needed
        print("ButtonSDK initialized with API key: \(apiKey)")
    }

    @objc public static func showButton(title: String, backgroundColor: UIColor, textColor: UIColor, cornerRadius: CGFloat) {
        // Example: Show a button on the key window (for demo purposes)
        guard let window = UIApplication.shared.windows.first else { return }
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.backgroundColor = backgroundColor
        button.setTitleColor(textColor, for: .normal)
        button.layer.cornerRadius = cornerRadius
        button.frame = CGRect(x: 50, y: 100, width: 200, height: 50)
        window.addSubview(button)
    }
} 