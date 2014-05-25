Pod::Spec.new do |s|
  s.name         = "JapaneseCalendarYear"
  s.version      = "0.0.1"
  s.summary      = "Calculate japanese calendar year from current year."
  s.homepage     = "https://github.com/hypermkt"
  s.license      = "MIT"
  s.author       = { "hypermkt" => "hypermkt@gmail.com" }
  s.social_media_url   = "https://twitter.com/hypermkt"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/hypermkt/JapaneseCalendarYear.git", :tag => s.version.to_s }
  s.source_files  = "Classes/*.{h,m}"
  s.requires_arc = true
end
