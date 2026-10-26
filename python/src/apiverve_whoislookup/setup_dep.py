from setuptools import setup, find_packages

setup(
    name='apiverve_whoislookup',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='WHOIS Lookup is a domain WHOIS API that reads the registry's RDAP or WHOIS record for any domain and returns the registrar, creation and expiry dates, nameservers, EPP status codes explained in plain English, transfer-lock and privacy flags, the registrant country where it is published, and domain age in days and years.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/whoislookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
