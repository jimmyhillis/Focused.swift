Pod::Spec.new do |s|
  s.name                  = "Focused"
  s.version               = "0.2.0"
  s.summary               = "An easy way to get information about the currently focused app on OS X."
  s.homepage              = "https://github.com/jimmyhillis/Focused.swift"
  s.license               = "MIT"
  s.author                = { "Jimmy Hillis" => "jimmy@hillis.me" }
  s.source                = { :git => "https://github.com/jimmyhillis/Focused.swift.git", :tag => s.version.to_s }
  s.social_media_url      = "https://twitter.com/ppjim3"
  s.osx.platform          = :osx, "10.10"
  s.osx.deployment_target = "10.9"
  s.source_files          = "Focused.swift"
end
