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

