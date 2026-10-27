Pod::Spec.new do |s|
  s.name             = 'APIVerveWHOISLookup'
  s.version          = '1.2.3'
  s.summary          = 'WHOIS Lookup is a domain WHOIS API that reads the registry\'s RDAP or WHOIS record for any domain and returns the registrar, creation and...'
  s.description      = <<-'DESC'
WHOIS Lookup is a domain WHOIS API that reads the registry's RDAP or WHOIS record for any domain and returns the registrar, creation and expiry dates, nameservers, EPP status codes explained in plain English, transfer-lock and privacy flags, the registrant country where it is published, and domain age in days and years.

This iOS/macOS SDK provides a convenient way to access the WHOIS Lookup from APIVerve.
Supports both callback-based and async/await patterns.
                       DESC

  s.homepage         = 'https://apiverve.com/marketplace/whoislookup?utm_source=cocoapods&utm_medium=referral&utm_content=homepage'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'APIVerve' => 'hello@apiverve.com' }
  # The SDK repo holds every language; the pod lives under cocoapods/ with its own tag.
  s.source           = { :git => 'https://github.com/apiverve/whoislookup-api.git', :tag => "cocoapods/v#{s.version}" }

  s.ios.deployment_target = '15.0'
  s.osx.deployment_target = '12.0'

  s.swift_version = '5.0'

  s.source_files = 'cocoapods/Sources/APIVerveWHOISLookup/**/*.swift'

  s.frameworks = 'Foundation'

  # APIResponse, APIVerveError and the request plumbing, shared by every APIVerve pod.
  s.dependency 'APIVerveCore', '~> 1.2'
end
