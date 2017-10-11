Pod::Spec.new do |s|
  s.name             = "VerticalLabel"
  s.version          = "1.0.1"
  s.summary          = "A simple vertical Label."
  s.homepage         = "https://github.com/bugix/VerticalLabel"
  s.license          = { type: 'MIT', file: 'LICENSE' }
  s.author           = { "Martin Imobersteg" => "martin.imobersteg@gmail.com" }
  s.source           = { git: "https://github.com/bugix/VerticalLabel.git", tag: s.version.to_s }
  s.ios.deployment_target = '10.0'
  s.requires_arc = true
  s.ios.source_files = 'VerticalLabel/*.{swift}'
  s.ios.frameworks = 'UIKit', 'Foundation'
end
