# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "apiverve_whoislookup"
  spec.version       = "1.2.3"
  spec.authors       = ["APIVerve"]
  spec.email         = ["hello@apiverve.com"]

  spec.summary       = "WHOIS Lookup API - Ruby Client"
  spec.description   = "WHOIS Lookup is a domain WHOIS API that reads the registry's RDAP or WHOIS record for any domain and returns the registrar, creation and expiry dates, nameservers, EPP status codes explained in plain English, transfer-lock and privacy flags, the registrant country where it is published, and domain age in days and years."
  spec.homepage      = "https://apiverve.com/marketplace/whoislookup?utm_source=ruby&utm_medium=referral&utm_content=homepage"
  spec.license       = "MIT"
  spec.required_ruby_version = ">= 2.7.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/apiverve/whoislookup-API/tree/main/ruby"
  spec.metadata["changelog_uri"] = "https://apiverve.com/changelog"
  spec.metadata["documentation_uri"] = "https://docs.apiverve.com/ref/whoislookup"

  spec.files = Dir.glob("{lib}/**/*") + %w[README.md LICENSE]
  spec.require_paths = ["lib"]

  spec.add_dependency "faraday", ">= 1.0", "< 3.0"
  spec.add_dependency "faraday-multipart", "~> 1.0"
  spec.add_dependency "json", "~> 2.0"
end
