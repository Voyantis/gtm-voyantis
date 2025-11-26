___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "voyantis_sdk",
  "version": 1,
  "securityGroups": [],
  "displayName": "Voyantis",
  "categories": [
    "ANALYTICS"
  ],
  "brand": {
    "id": "voyantis",
    "displayName": "Voyantis",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAMAAAAoLQ9TAAAAY1BMVEVHcEzt7e3o6Or39/jr6+vn5+mzs7T09PSWlpaDg4L39/e5ubbn5+rs7Oz4+P33///8/P//AEb29vz+N2b5x9T6sMD65+3iWHjWAEX9UHbKyswAAACusLX8epP6lKj8kKfUH1xBsqwmAAAADnRSTlMAkdHbkdIdpR0d3B3RkS6uU8AAAACdSURBVBiVZU9bEoIwDAzawqCSV1vAt/c/pVsqX2YynWyy2WyJEOdwYI7dSL8Y1NmROjR88hasftzmO/abOjijViDi+rira09Txby8hfOMMlCEni4fY7GnOF8IWPKakmQr9RYacrWUZrxStwmW5mUVEF5ocKSAlWKlWKoE76jHWUlmiaHgOjZjkvM292G3zptgs/7/OdifIvMh9LX+AiK8DV5L7Z+LAAAAAElFTkSuQmCC"
  },
  "description": "The Voyantis Tag enables predictive signal optimization by securely fetching key identifiers to measure and improve signal health, ensuring accurate matching and stronger ad performance.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "apiKey",
    "displayName": "API Key",
    "simpleValueType": true,
    "help": "Enter your Voyantis API key",
    "valueValidators": [
      {
        "type": "NON_EMPTY"
      },
      {
        "type": "REGEX",
        "args": [
          "^[A-Za-z0-9_-]+$"
        ]
      }
    ]
  },
  {
    "type": "SELECT",
    "name": "environment",
    "displayName": "Environment",
    "simpleValueType": true,
    "help": "Select the environment for your SDK deployment",
    "selectItems": [
      {
        "value": "production",
        "displayValue": "Production"
      },
      {
        "value": "staging",
        "displayValue": "Staging"
      }
    ],
    "defaultValue": "production"
  },
  {
    "type": "CHECKBOX",
    "name": "hasUserId",
    "simpleValueType": true,
    "defaultValue": false,
    "checkboxText": "I have user Id var",
    "subParams": [
      {
        "type": "GROUP",
        "name": "userIdGroup",
        "displayName": "",
        "subParams": [
          {
            "type": "SELECT",
            "name": "userId",
            "displayName": "User ID Variable",
            "simpleValueType": true,
            "help": "Select the GTM variable that contains the user ID (e.g., a logged-in user\u0027s ID).",
            "macrosInSelect": true,
            "notSetText": "Select a user ID variable",
            "selectItems": [],
            "enablingConditions": [
              {
                "paramName": "hasUserId",
                "type": "EQUALS",
                "paramValue": true
              }
            ]
          }
        ]
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "hasEmail",
    "simpleValueType": true,
    "defaultValue": false,
    "checkboxText": "I have email var",
    "subParams": [
      {
        "type": "GROUP",
        "name": "emailGroup",
        "displayName": "",
        "subParams": [
          {
            "type": "SELECT",
            "name": "email",
            "displayName": "Email Variable",
            "simpleValueType": true,
            "help": "Select the GTM variable that contains the user\u0027s plain (non-hashed) email address.",
            "macrosInSelect": true,
            "notSetText": "Select an email variable",
            "selectItems": [],
            "enablingConditions": [
              {
                "paramName": "hasEmail",
                "type": "EQUALS",
                "paramValue": true
              }
            ]
          },
          {
            "type": "SELECT",
            "name": "googleHashedEmail",
            "displayName": "Hashed Google Email Variable",
            "simpleValueType": true,
            "help": "Select the GTM variable that contains the user\u0027s email address already hashed according to Google\u0027s requirements (SHA-256).",
            "macrosInSelect": true,
            "notSetText": "Select a Google-hashed email variable",
            "selectItems": [],
            "enablingConditions": [
              {
                "paramName": "hasEmail",
                "type": "EQUALS",
                "paramValue": true
              }
            ]
          },
          {
            "type": "SELECT",
            "name": "metaHashedEmail",
            "displayName": "Hashed Pixel Email Variable",
            "simpleValueType": true,
            "help": "Select the GTM variable that contains the user\u0027s email address already hashed according to Meta\u0027s requirements (SHA-256).",
            "macrosInSelect": true,
            "notSetText": "Select a Meta-hashed email variable",
            "selectItems": [],
            "enablingConditions": [
              {
                "paramName": "hasEmail",
                "type": "EQUALS",
                "paramValue": true
              }
            ]
          }
        ]
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "hasPhone",
    "simpleValueType": true,
    "defaultValue": false,
    "checkboxText": "I have phone var",
    "subParams": [
      {
        "type": "GROUP",
        "name": "phoneGroup",
        "displayName": "",
        "subParams": [
          {
            "type": "SELECT",
            "name": "phone",
            "displayName": "Phone Variable",
            "simpleValueType": true,
            "help": "Select the GTM variable that contains the user\u0027s plain (non-hashed) phone number.",
            "macrosInSelect": true,
            "notSetText": "Select a phone variable",
            "selectItems": [],
            "enablingConditions": [
              {
                "paramName": "hasPhone",
                "type": "EQUALS",
                "paramValue": true
              }
            ]
          },
          {
            "type": "SELECT",
            "name": "googleHashedPhone",
            "displayName": "Hashed Google Phone Variable",
            "simpleValueType": true,
            "help": "Select the GTM variable that contains the user\u0027s phone number already hashed according to Google\u0027s requirements (SHA-256).",
            "macrosInSelect": true,
            "notSetText": "Select a Google-hashed phone variable",
            "selectItems": [],
            "enablingConditions": [
              {
                "paramName": "hasPhone",
                "type": "EQUALS",
                "paramValue": true
              }
            ]
          },
          {
            "type": "SELECT",
            "name": "metaHashedPhone",
            "displayName": "Hashed Pixel Phone Variable",
            "simpleValueType": true,
            "help": "Select the GTM variable that contains the user\u0027s phone number already hashed according to Meta\u0027s requirements (SHA-256).",
            "macrosInSelect": true,
            "notSetText": "Select a Meta-hashed phone variable",
            "selectItems": [],
            "enablingConditions": [
              {
                "paramName": "hasPhone",
                "type": "EQUALS",
                "paramValue": true
              }
            ]
          }
        ]
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "analyticsSystemGroup",
    "displayName": "Analytics system",
    "subParams": [
      {
        "type": "CHECKBOX",
        "name": "hasAmplitude",
        "simpleValueType": true,
        "defaultValue": false,
        "checkboxText": "Amplitude",
        "subParams": [
          {
            "type": "GROUP",
            "name": "amplitudeGroup",
            "displayName": "",
            "subParams": [
              {
                "type": "SELECT",
                "name": "amplitudeId",
                "displayName": "Amplitude ID variable",
                "simpleValueType": true,
                "help": "Select a GTM variable that returns the Amplitude user ID. If left blank, the tag will use the default fallback function to collect the Amplitude user ID automatically.",
                "macrosInSelect": true,
                "notSetText": "Use default fallback",
                "selectItems": [],
                "enablingConditions": [
                  {
                    "paramName": "hasAmplitude",
                    "type": "EQUALS",
                    "paramValue": true
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "hasMixpanel",
        "simpleValueType": true,
        "defaultValue": false,
        "checkboxText": "Mixpanel",
        "subParams": [
          {
            "type": "GROUP",
            "name": "mixpanelGroup",
            "displayName": "",
            "subParams": [
              {
                "type": "SELECT",
                "name": "mixpanelId",
                "displayName": "Mixpanel ID variable",
                "simpleValueType": true,
                "help": "Select a GTM variable that returns the Mixpanel user ID. If left blank, the tag will use the default fallback function to collect the Mixpanel user ID automatically.",
                "macrosInSelect": true,
                "notSetText": "Use default fallback",
                "selectItems": [],
                "enablingConditions": [
                  {
                    "paramName": "hasMixpanel",
                    "type": "EQUALS",
                    "paramValue": true
                  }
                ]
              }
            ]
          }
        ]
      },
      {
        "type": "CHECKBOX",
        "name": "hasSegment",
        "simpleValueType": true,
        "defaultValue": false,
        "checkboxText": "Segment",
        "subParams": [
          {
            "type": "GROUP",
            "name": "segmentGroup",
            "displayName": "",
            "subParams": [
              {
                "type": "SELECT",
                "name": "segmentId",
                "displayName": "Segment ID variable",
                "simpleValueType": true,
                "help": "Select a GTM variable that returns the Segment user ID. If left blank, the tag will use the default fallback function to collect the Segment user ID automatically.",
                "macrosInSelect": true,
                "notSetText": "Use default fallback",
                "selectItems": [],
                "enablingConditions": [
                  {
                    "paramName": "hasSegment",
                    "type": "EQUALS",
                    "paramValue": true
                  }
                ]
              }
            ]
          }
        ]
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript     = require('injectScript');
const log              = require('logToConsole');
const copyFromWindow = require('copyFromWindow');

const SDK_NAMESPACE = 'VoyantisSDK';
const apiKey      = data.apiKey;
const environment = data.environment;

// Validate required inputs
if (!apiKey) {
  log('Voyantis GTM: apiKey is required');
  if (data.gtmOnFailure) data.gtmOnFailure();
  return;
}

// ============================================================================
// FUNCTIONS
// ============================================================================
function debug(message) {
    if (environment === 'staging') {
        log('Voyantis GTM: ' + message);
    }
}

function getSdkUrl(apiKey, environment) {
    var baseUrl = 'https://sdk.voyantis.io';
    var path = '/' + apiKey + '/vy-cs-sdk.min.js';
    
    if (environment === 'staging') {
      return baseUrl + '/staging' + path;
    }
    return baseUrl + path;
}

function isDefined(value) {
  return value !== undefined && value !== null && value !== '';
}

function addIfDefined(obj, key, value) {
  if (isDefined(value)) obj[key] = value;
}

function hasProperties(obj) {
  if (!obj) return false;
  for (var key in obj) {
    return true;
  }
  return false;
}

function buildUserData(data) {
  var userData = {};

  // Only add email fields if hasEmail checkbox is enabled
  if (data.hasEmail) {
    addIfDefined(userData, 'email', data.email);
    addIfDefined(userData, 'googleHashedEmail', data.googleHashedEmail);
    addIfDefined(userData, 'metaHashedEmail', data.metaHashedEmail);
  }

  // Only add phone fields if hasPhone checkbox is enabled
  if (data.hasPhone) {
    addIfDefined(userData, 'phone', data.phone);
    addIfDefined(userData, 'googleHashedPhone', data.googleHashedPhone);
    addIfDefined(userData, 'metaHashedPhone', data.metaHashedPhone);
  }

  // Add analytics IDs if their respective checkboxes are enabled
  if (data.hasSegment) {
    addIfDefined(userData, 'segmentId', data.segmentId);
  }
  if (data.hasMixpanel) {
    addIfDefined(userData, 'mixpanelId', data.mixpanelId);
  }
  if (data.hasAmplitude) {
    addIfDefined(userData, 'amplitudeId', data.amplitudeId);
  }

  return userData;
}

function identifyUser(VoyantisSDK, currentData) {
  if (!VoyantisSDK) {
    debug('SDK not found. Ensure SDK is loaded before identifying user.');
    return false;
  }

  if (typeof VoyantisSDK.identify !== 'function') {
    debug('SDK identify function not available. SDK may not be fully initialized.');
    return false;
  }

  // Build userData object with all properties (only include defined values)
  var userData = buildUserData(currentData);

  // Only use userId if hasUserId checkbox is enabled
  var userId = currentData.hasUserId ? currentData.userId : undefined;

  if (userId || hasProperties(userData)) {
    VoyantisSDK.identify(userId, userData);

    if (userId) {
      debug('User identified successfully with userId: ' + userId);
    } else {
      debug('User identified successfully with user data only');
    }
    return true;
  }

  debug('User not identified: no userId or user data provided');

  return false;
}

// ============================================================================
// MAIN EXECUTION
// ============================================================================
var VoyantisSDK = copyFromWindow(SDK_NAMESPACE);
var sdkLoaded = VoyantisSDK && typeof VoyantisSDK.init === 'function';

if (!sdkLoaded) {
  var sdkUrl = getSdkUrl(apiKey, environment);

  // SDK load callbacks
  var onSuccess = function () {
    debug('SDK script loaded, initializing...');

    var loadedSDK = copyFromWindow(SDK_NAMESPACE);

    if (loadedSDK && typeof loadedSDK.init === 'function') {
      loadedSDK.init({}, 1, apiKey, environment);
      debug('SDK initialized successfully');
      
      identifyUser(loadedSDK, data);
      if (data.gtmOnSuccess) data.gtmOnSuccess();
    } else {
      debug('SDK not found or invalid after script load');
      if (data.gtmOnFailure) data.gtmOnFailure();
    }
  };
  
  var onFailure = function () {
    debug('Failed to load SDK script from URL: ' + sdkUrl);
    if (data.gtmOnFailure) data.gtmOnFailure();
  };

  // Load SDK script
  injectScript(sdkUrl, onSuccess, onFailure);
} else {
  debug('SDK already loaded, proceeding with user identification');

  if (VoyantisSDK && typeof VoyantisSDK.identify === 'function') {
    identifyUser(VoyantisSDK, data);
    if (data.gtmOnSuccess) data.gtmOnSuccess();
  } else {
    debug('SDK identify function not available. SDK may not be fully initialized.');
    if (data.gtmOnFailure) data.gtmOnFailure();
  }
}


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "inject_script",
        "versionId": "1"
      },
      "param": [
        {
          "key": "urls",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 1,
                "string": "https://sdk.voyantis.io/*/vy-cs-sdk.min.js"
              },
              {
                "type": 1,
                "string": "https://sdk.voyantis.io/staging/*/vy-cs-sdk.min.js"
              }
            ]
          }
        }
      ]
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "logging",
        "versionId": "1"
      },
      "param": [
        {
          "key": "environments",
          "value": {
            "type": 1,
            "string": "debug"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "VoyantisSDK"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              },
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "__voyantisInitHelper"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios:
- name: Quick Test
  code: runCode();
setup: ''


___NOTES___

No template literals, no try/catch. Adds GA identifier lookup (event → gtag client_id → _ga cookie).


