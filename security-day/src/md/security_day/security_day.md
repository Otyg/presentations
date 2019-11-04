---
title: Automating security with CI/CD - Continous hacking
theme: moon
highlight-theme: github
revealOptions:
  transition: 'slide'

---
## Automating security with CI/CD 
### Continous hacking 

---
## CI/CD - quick walkthrough
Thze bild of thze pipeline
Note: * Code review (Pull/change-request)
* Build and (unit-) test change 
* Delivery: publish built artifacts to repository
* Deploy: publish built artifacts to running environment

----
## Built-in security features
* Audit-trail
* Immutable artifacts 
* Repeatable

----
## Automate the repetative stuff
### Like security checks

---
## But why security tests in CI/CD-pipelines?
### Find and fix the low hanging fruit

Note: * Find issues early and fix them early
* Keep in pace with development
* Help the pentesters

---
## Static analysis can find bad patterns
### Like injection vectors and use of insecure functions

Note: * SQL, XSS, Command injection, hardcoded credentials, bad crypto
* Potential buffert overflows etc
* Highly dependent on language and automation platform
* SonarQube is good, but PR-analysis only available when paid
* SpotBugs, PumaScan, GoSec
* Can be hard to fix and harder to measure criticality
----
## A9/CWE-937: Using Components with Known Vulnerabilities
### Use tools to check your dependencies for reported vulnerabilities

Note: * Dependent on language, framework, dependencymanagement and build-system
* Owasp DependencyCheck and Dependencytrack cover most cases
* npm Audit
* Or tell developers when there are new versions available as a build check
* Often easy to fix without any fuzz, can be really hard to measure how critical it is
----
## Marvin-report + SonarQube + Dependency-check picture?

Note: * When faced with this, it's hard to ignore and forget it
* Requires action and reason to not fix
---
## Dynamic testing
### Security tests is not that hard

----
## Unit-tests
### Test your boundaries and input handling

Note: * Security features are features
* How does the code handle certain input
* How does it handle exremely large input
* Integer overflow/underflow
----
## But, you must know how to hack to write security tests
### Or do you?

----
## Most attackers will use attack-proxies
### So should you!

Note: * A proxy that analyses and manipulates the requests passed through it
* OWASP ZAP
* BurpSuite
----
## Run your API, E2E and UI-tests through an attack-proxy

Note: * Can provide valuable findings such as insecure cookies
* It will replay the traffic and manipulate the requests and look at the responses
* If findings from static analysis is exploitable
* Requires some setup, but the tools does not require any security knowledge
* You might break things though
----
## Add testcases from penetrationtests
### Provides regression testing

Note: * ZAP can be scripted, i.e. results from an penetration test can be added to provide regression testing
---
## But why?
### Find and fix the low hanging fruit
---
## The setup we run at our customer

----
## OWASP Dependency Check & DTR Image Scan
### Find components with known vulnerabilities

Note: * We also check for outdated dependencies

----
## SonarQube
### Highlights potential injections etc

Note: * Can report on pull-request to stop the leak

----
## OWASP ZAP
### Use existing API/UI-tests to launch attacks

Note: * Run through a proxy
* Scan the requests and reuse them after manipulation
* Can be used to test vulnerabilities that's hard to find static
* Can be used to verify static findings

---
## One step further...
### Infrastructure as code..?

----
## Is the deploy target secure?
### Test the infrastructure before deploying to it

---
## Thank you 
