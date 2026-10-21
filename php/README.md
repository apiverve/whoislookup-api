# WHOIS Lookup API - PHP Package

WHOIS Lookup checks domain registration records to return registrar details, creation and expiration dates, domain age, and active nameservers. Pass any domain name to inspect status codes and calculate days since registration.

## Installation

Install via Composer:

```bash
composer require apiverve/whoislookup
```

## Getting Started

Get your API key at [APIVerve](https://apiverve.com)

### Basic Usage

```php
<?php

require_once 'vendor/autoload.php';

use APIVerve\Whoislookup\Client;

// Initialize the client
$client = new Client('YOUR_API_KEY');

// Make a request
$response = $client->execute(['domain' => 'myspace.com']);

// Print the response
print_r($response);
```


### Error Handling

```php
use APIVerve\Whoislookup\Client;
use APIVerve\Whoislookup\Exceptions\APIException;
use APIVerve\Whoislookup\Exceptions\ValidationException;

try {
    $response = $client->execute(['domain' => 'myspace.com']);
    print_r($response['data']);
} catch (ValidationException $e) {
    echo "Validation error: " . implode(', ', $e->getErrors());
} catch (APIException $e) {
    echo "API error: " . $e->getMessage();
    echo "Status code: " . $e->getStatusCode();
}
```

### Debug Mode

```php
// Enable debug logging
$client = new Client(
    apiKey: 'YOUR_API_KEY',
    debug: true
);
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

## Requirements

- PHP 7.4 or higher
- Guzzle HTTP client

## Documentation

For more information, visit the [API Documentation](https://docs.apiverve.com/ref/whoislookup?utm_source=packagist&utm_medium=referral&utm_content=readme).

## Support

- Website: [https://apiverve.com/marketplace/whoislookup?utm_source=php&utm_medium=referral&utm_content=readme](https://apiverve.com/marketplace/whoislookup?utm_source=php&utm_medium=referral&utm_content=readme)
- Email: hello@apiverve.com

## License

This package is available under the [MIT License](LICENSE).
