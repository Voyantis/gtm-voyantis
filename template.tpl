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
    "id": "brand_voyantis_ai",
    "displayName": "Voyantis",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAMAAACdt4HsAAAAolBMVEVHcEz8D5b5Bmz4FKvBDmr9CHb6Bm3/FbX0C4H0C379Bm/uFKb/BnP/BnH2DpEPDw/6DIj/AmD/D5wPDw/+EaP/A2P7FbIPDw8PDw8ODg4PDw/FEX//AFf/B3f/BXD/CX4PDw//AVz/E6z/EaT/EJ3/BGj/CoT/Dpb/DZD/C4r/AmLeDnzqDX/NDnfjFJrREIDaE5P1C37tFKK/D3bTE4zsEpiHGIJQAAAAHHRSTlMATJP6Cid4/hY2qWle7bzu1MDi0YnVwm+NLpLyDT753wAAAxtJREFUWIXFltl6qjAUhUEGQRTR2vac7wiIiAMo4sD7v9oJmc2gLb3o8k6yflZ2dhIM47f0+TZ9+9Pfbk9XUH/7ArB/terp/yT+Vc9ZvFHA9KeA1S8l+HEN2CrYPQE/7gPciU/e74xd1+ybzzDGkziOkyQZ9UREaRojQuJohnhP7N42ZYBENdKZLZfLmY7hbbeX9BKnmPAuj/CXSBrCBYlG8KURGQbMlP4I+Y8UMJAmsCRS+d0jFo0gvcelAMUcPOSujhUFSEWYZU8ShMgNdMELEUsJsicAv6qaCuoUxzjCSCxBRgjiE6AIu8GP9oIrloACxnKAMxTwn2IKECv1TgGKCkB7p6rrRkiYCGPsLMMEucVsYr9V2y3uZ2kGYwqQGsRwz6db97tVBwqIxUHvGSHILfrvBnW6HDAAEMQAdkkBkt9H9uP+cKAEsQKGiwDLTLGIg9vtXO13+/2eAmLpOJjgBNnjDGzHDBbtbrPZ7BgAEKSV9suMRGB/BtYaKM9z6McAGEFOOSpLHIGtwcdwiPwYwCLIfrssMYHtxGAIATgBH0FeZ2NA/BnrIhCAJyBARzBlv10UJAKrDufn5xCpDvQBAnQJ2J/zIUbkXIS54vXgtAF+TOD6a0EjrEkVQrlJoWZFQebA/z3kI+S79qw77/2CALKH+no0wrVu7mBD6gCTghKEAvlBYHrBHeusuQ/dJClwERQLDPqhae4NJKgTONCPIigHAADSXX2fTrojHkUQtziSWdeYoFyDUWdHGaQtjuTXUE3bBIqnY3jHQEKpWWT7CgFt3SqOex/fk10AxWOka6e6betaeuSQi7ZD6PzGByS0QGJGh35ugACaCRjduWJBwrUNHx+Y3PeKfNkzeZZlgW68gu3wsJUG/BeP4nuFm8N6beEtyXKaky0H0KwgGbtm58oC/TWO2A2huicFWfzRFoVhxN0QEKD75nuIkItHGwYAhH4BuCpwZ+PDDQH8r96PJ5ErbwigF/NH8jQ3RJpGX7EzwkaM8KR/BNlzRRnnX5k+1UIqo/wx9QrBRwiVV8Qr+YtwDhQuerm/p/+8DLv91y0qeAAAAABJRU5ErkJggg\u003d\u003d"
  },
  "description": "The Voyantis Tag enables predictive signal optimization by securely fetching key identifiers from your website or app. These identifiers help Voyantis measure and improve the health of your signals, ensuring accurate matching and stronger performance across ad networks such as Google and Meta.",
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
    "help": "Select the environment for your Voyantis deployment",
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
debug('starting load. Env=' + environment + ', URL=' + sdkUrl);
// ---- GA identifier helpers (no try/catch) ----

// ---- SDK load callbacks ----
var onSuccess = function () {
  debug('script loaded successfully');
  if (data.gtmOnSuccess) { data.gtmOnSuccess(); }
};

var onFailure = function () {
  debug('failed to load script');
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


