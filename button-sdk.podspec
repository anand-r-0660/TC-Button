require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "button-sdk"
  s.version      = package['version']
  s.summary      = package['description']
  s.description  = package['description']
  s.homepage     = "https://github.com/anand-r-0660/TC-Button"
  s.license      = package['license']
  s.author       = { "Anand" => "anand.r.0660@gmail.com" }
  s.platform     = :ios, "11.0"
  s.source       = { :git => "https://github.com/anand-r-0660/TC-Button.git", :tag => "v#{s.version}" }
  s.source_files = "ios/**/*.{h,m,mm,swift}"
  s.requires_arc = true
  s.dependency "React-Core"
  s.swift_version = "5.0"
end
