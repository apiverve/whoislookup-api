from setuptools import setup, find_packages

setup(
    name='apiverve_whoislookup',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='WHOIS Lookup checks domain registration records to return registrar details, creation and expiration dates, domain age, and active nameservers. Pass any domain name to inspect status codes and calculate days since registration.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/whoislookup?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
