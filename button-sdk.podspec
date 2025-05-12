require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "button-sdk"
  s.version      = package['version']
  s.summary      = package['description'] || "A customizable React Native button component."
  s.description  = package['description'] || "A customizable React Native button component."
  s.homepage     = "https://example.com" # <-- Update this to your repo if you have one
  s.license      = package['license'] || "MIT"
  s.author       = { "Your Name" => "your@email.com" } # <-- Update this
  s.platform     = :ios, "11.0"
  s.source       = { :path => "." }
  s.source_files = "ios/**/*.{h,m,mm,swift}"
  s.requires_arc = true
  s.dependency "React"
end
