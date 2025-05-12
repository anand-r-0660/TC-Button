import Foundation
import UIKit

public class ButtonSDK {
    private var apiKey: String?
    private static let shared = ButtonSDK()
    
    private init() {}
    
    public static func initialize(apiKey: String) {
        shared.apiKey = apiKey
    }
    
    public static func showButton(title: String, 
                                backgroundColor: UIColor = .systemBlue,
                                textColor: UIColor = .white,
                                cornerRadius: CGFloat = 8.0) {
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene,
              let window = windowScene.windows.first else {
            return
        }
        
        let button = UIButton(type: .system)
        button.setTitle(title, for: .normal)
        button.backgroundColor = backgroundColor
        button.setTitleColor(textColor, for: .normal)
        button.layer.cornerRadius = cornerRadius
        
        // Add button to window
        window.addSubview(button)
        
        // Set constraints
        button.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            button.centerXAnchor.constraint(equalTo: window.centerXAnchor),
            button.centerYAnchor.constraint(equalTo: window.centerYAnchor),
            button.widthAnchor.constraint(equalToConstant: 200),
            button.heightAnchor.constraint(equalToConstant: 50)
        ])
    }
} 