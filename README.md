# staRHs API Documentation [![API v0.93](https://img.shields.io/badge/API-v0.93-blue.svg)](http://resourcefulhumans.github.io/staRHs-api/)

[![Build Status](https://travis-ci.org/ResourcefulHumans/staRHs-api.svg?branch=master)](https://travis-ci.org/ResourcefulHumans/staRHs-api)
[![monitored by greenkeeper.io](https://img.shields.io/badge/greenkeeper.io-monitored-brightgreen.svg)](http://greenkeeper.io/)

A HTML version is generated via TravisCI and published at [resourcefulhumans.github.io/staRHs-api/](http://resourcefulhumans.github.io/staRHs-api/)

This project hosts the staRHs api documentation. The API definition is copied from [anypoint.mulesoft.com/apiplatform/digitalbauhaus-gmbh](https://anypoint.mulesoft.com/apiplatform/digitalbauhaus-gmbh/#/portals/organiz18/pages/54810)

## CURL recipes

    # Create a login token 
    curl -v -H "APIKey: …" -H "APIUser: …" -H "APIPassword: …" https://services.digital-bauhaus.solutions/RH-API/V0.93/session/get-LoginToken
    # Create a session token for a user with his password
    curl -X POST -v -H "Content-Length: 0" -H "LoginToken: …" -H "UserID: …" -H "Password: …" https://services.digital-bauhaus.solutions/RH-API/V0.93/session/login-with-userid
    
    # Fetch the employee list
    curl -v -H "SessionToken: …" https://services.digital-bauhaus.solutions/RH-API/V0.93/profile/get-ClientEmployees
    
    # Fetch the received staRHs for 2016
    curl -v -H "SessionToken: …" "https://services.digital-bauhaus.solutions/RH-API/V0.93/starhs/get-StarhsReceived?DateFrom=2016-01-01&DateFromTime=00:00:00&DateTo=2016-12-31&DateToTime=23:59:59"
    
    # Send mtacker a staRH
    curl -v -H "SessionToken: …" "https://services.digital-bauhaus.solutions/RH-API/V0.93/starhs/share-Starh?ToID=f5e5f697-7fe5-40bc-8ce9-439f222b16dd&NoOfStaRHs=1&Message=Test+from+curl"

