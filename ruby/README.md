# WHOIS Lookup API - Ruby Gem

WHOIS Lookup is a domain WHOIS API that reads the registry's RDAP or WHOIS record for any domain and returns the registrar, creation and expiry dates, nameservers, EPP status codes explained in plain English, transfer-lock and privacy flags, the registrant country where it is published, and domain age in days and years.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'apiverve_whoislookup'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install apiverve_whoislookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```ruby
require 'apiverve_whoislookup'

# Initialize the client
client = APIVerve::Whoislookup::Client.new(api_key: "YOUR_API_KEY")

# Make a request
response = client.execute({ domain: "myspace.com" })

# Print the response
puts response
```


### Error Handling

```ruby
begin
  response = client.execute({ domain: "myspace.com" })
  puts response["data"]
rescue APIVerve::Whoislookup::ValidationError => e
  puts "Validation error: #{e.errors.join(', ')}"
rescue APIVerve::Whoislookup::APIError => e
  puts "API error: #{e.message}"
  puts "Status code: #{e.status_code}"
end
```

### Debug Mode

```ruby
# Enable debug logging
client = APIVerve::Whoislookup::Client.new(
  api_key: "YOUR_API_KEY",
  debug: true
)
```

## Example Response

```json
{
  "status": "ok",
  "error": null,
  "data": {
    "domainName": "MYSPACE.COM",
    "registryDomainID": "3877095_DOMAIN_COM-VRSN",
    "createdDate": "1996-02-22T05:00:00Z",
    "expiryDate": "2029-02-23T05:00:00Z",
    "updatedDate": "2023-01-17T00:16:21Z",
    "domainStatus": [
      "client delete prohibited https://icann.org/epp#client delete prohibited",
      "client renew prohibited https://icann.org/epp#client renew prohibited",
      "client transfer prohibited https://icann.org/epp#client transfer prohibited",
      "client update prohibited https://icann.org/epp#client update prohibited"
    ],
    "dNSSEC": "unsigned",
    "registrar": "GoDaddy.com, LLC",
    "registrarIANAID": "146",
    "registrarURL": "http://www.godaddy.com",
    "registrarAbuseContactEmail": "abuse@godaddy.com",
    "registrarAbuseContactPhone": "tel:480-624-2505",
    "nameServers": [
      "ns-cloud-a2.googledomains.com",
      "ns-cloud-a3.googledomains.com",
      "ns-cloud-a4.googledomains.com",
      "ns-cloud-a1.googledomains.com"
    ],
    "statusDetails": [
      {
        "code": "clientDeleteProhibited",
        "setBy": "registrar",
        "description": "The registrar blocks deletion"
      },
      {
        "code": "clientRenewProhibited",
        "setBy": "registrar",
        "description": "The registrar blocks renewal"
      },
      {
        "code": "clientTransferProhibited",
        "setBy": "registrar",
        "description": "The registrar blocks transfer to another registrar"
      },
      {
        "code": "clientUpdateProhibited",
        "setBy": "registrar",
        "description": "The registrar blocks changes to the record"
      }
    ],
    "isTransferLocked": true,
    "isOnHold": false,
    "isPendingDelete": false,
    "registrantOrganization": "Domains By Proxy, LLC",
    "registrantCountry": "US",
    "isPrivacyProtected": true,
    "domain": "myspace.com",
    "fetchedAtUTC": "2025-12-17T01:54:05.069Z",
    "tld": "com",
    "status": "active",
    "domainAgeDays": 11094,
    "domainAgeYears": 30.4,
    "isRecentlyRegistered": false,
    "trustScore": 93,
    "trustLevel": "high"
  }
}
```

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/whoislookup?utm_source=rubygems&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/whoislookup?utm_source=ruby&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/whoislookup?utm_source=ruby&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This gem is available under the [MIT License](LICENSE).
