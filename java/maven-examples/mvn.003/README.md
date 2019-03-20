
# mvn.003

 > Maven Travis CI Code Coverage 

| Service                                              | Status                                                                                                                |
|:----------------------------------------------------:|:----------------------------------------------------------------------------------------------------------------------|
| [Codecov.io](https://codecov.io/gh)                  | ![codecov](https://codecov.io/gh/patevs/mvn-sc-002/branch/master/graph/badge.svg)                                     |
| [Travis CI](https://travis-ci.org/patevs/mvn-sc-002) | [![Build Status](https://travis-ci.org/patevs/mvn-sc-002.svg?branch=master)](https://travis-ci.org/patevs/mvn-sc-002) |

----

## Guide
### Travis Setup

Add to your `.travis.yml` file.
```yml
language: java

script: "mvn cobertura:cobertura"

after_success:
  - bash <(curl -s https://codecov.io/bash)
```
### Produce Coverage Reports
#### Add Cobertura plugin
```xml
<plugin>
    <groupId>org.codehaus.mojo</groupId>
    <artifactId>cobertura-maven-plugin</artifactId>
    <version>2.7</version>
    <configuration>
        <formats>
            <format>html</format>
            <format>xml</format>
        </formats>
        <check />
    </configuration>
</plugin>
```
Call `mvn cobertura:cobertura` during your CI tests, [see here](https://github.com/codecov/example-java-maven/blob/master/.travis.yml#L4)

## Caveats
### Private Repos
Add to your `.travis.yml` file.
```yml
after_success:
  - bash <(curl -s https://codecov.io/bash) -t uuid-repo-token
```

<br />


----

