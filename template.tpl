___INFO___

{
  "type": "TAG",
  "id": "voyantis_sdk",
  "version": 1,
  "securityGroups": [],
  "displayName": "Voyantis SDK",
  "categories": ["ANALYTICS"],
  "brand": {
    "id": "brand_voyantis_ai",
    "displayName": "Voyantis AI",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAAEAAAABCAYAAAAfFcSJAAAADUlEQVR42mNk+M9QDwADhgGAWjR9awAAAABJRU5ErkJggg=="
  },
  "description": "Load Voyantis AI SDK to send event data from Google Tag Manager to Voyantis for AI-powered customer analytics and predictions.",
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
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

var injectScript     = require('injectScript');
var log              = require('logToConsole');

var apiKey        = data.apiKey;
var environment   = data.environment;

// ---- Conditional Debug Logging ----
function debug(message) {
  if (environment === 'staging') {
    log('Voyantis SDK: ' + message);
  }
}

// ---- Build SDK URL (ES5) ----
var sdkUrl;
if (environment === 'staging') {
  sdkUrl = 'https://sdk.voyantis.io/staging/' + apiKey + '/vy-cs-sdk.min.js';
} else {
  sdkUrl = 'https://sdk.voyantis.io/' + apiKey + '/vy-cs-sdk.min.js';
}
debug('Voyantis SDK: starting load. Env=' + environment + ', URL=' + sdkUrl);
// ---- GA identifier helpers (no try/catch) ----

// ---- SDK load callbacks ----
var onSuccess = function () {
  debug('Voyantis SDK script loaded successfully');
  if (data.gtmOnSuccess) { data.gtmOnSuccess(); }
};

var onFailure = function () {
  debug('Failed to load VoyantisSDK script');
  if (data.gtmOnFailure) { data.gtmOnFailure(); }
};

// ---- Load SDK ----
injectScript(sdkUrl, onSuccess, onFailure);


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
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

No template literals, no try/catch. Adds GA identifier lookup (event → gtag client_id → _ga cookie).


