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
  "description": "Loads Voyantis SDK with environment configuration or identifies users",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "SELECT",
    "name": "tagType",
    "displayName": "Tag Type",
    "simpleValueType": true,
    "help": "Select whether to initialize the SDK or identify a user",
    "selectItems": [
      {
        "value": "init",
        "displayValue": "Init"
      },
      {
        "value": "identify",
        "displayValue": "Identify"
      }
    ],
    "defaultValue": "init"
  },
  {
    "type": "GROUP",
    "name": "initGroup",
    "displayName": "Init Configuration",
    "subParams": [
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
        ],
        "enablingConditions": [
          {
            "paramName": "tagType",
            "type": "EQUALS",
            "paramValue": "init"
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
        "defaultValue": "production",
        "enablingConditions": [
          {
            "paramName": "tagType",
            "type": "EQUALS",
            "paramValue": "init"
          }
        ]
      }
    ],
    "enablingConditions": [
      {
        "paramName": "tagType",
        "type": "EQUALS",
        "paramValue": "init"
      }
    ]
  },
  {
    "type": "GROUP",
    "name": "identifyGroup",
    "displayName": "Identify Configuration",
    "subParams": [
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
                "help": "Select the GTM variable that contains the user ID (e.g., a logged-in user's ID).",
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
                "help": "Select the GTM variable that contains the user's plain (non-hashed) email address.",
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
                "help": "Select the GTM variable that contains the user's email address already hashed according to Google's requirements (SHA-256).",
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
                "help": "Select the GTM variable that contains the user's email address already hashed according to Meta's requirements (SHA-256).",
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
                "help": "Select the GTM variable that contains the user's plain (non-hashed) phone number.",
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
                "help": "Select the GTM variable that contains the user's phone number already hashed according to Google's requirements (SHA-256).",
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
                "help": "Select the GTM variable that contains the user's phone number already hashed according to Meta's requirements (SHA-256).",
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
    ],
    "enablingConditions": [
      {
        "paramName": "tagType",
        "type": "EQUALS",
        "paramValue": "identify"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const injectScript     = require('injectScript');
const log              = require('logToConsole');
const copyFromWindow = require('copyFromWindow');
const getContainerVersion = require('getContainerVersion');

const SDK_NAMESPACE = 'VoyantisSDK';
var VoyantisSDK = copyFromWindow(SDK_NAMESPACE);

function debug(message) {
  log('Voyantis GTM: ' + message);
}

// ---- Route based on tag type ----
if (data.tagType === 'init') {
  // ---- Init logic ----
  const apiKey      = data.apiKey;
  const environment = data.environment;

  function debugInit(message) {
    if (environment === 'staging') {
      debug(message);
    }
  }

  // ---- Build SDK URL (ES5) ----
  var sdkUrl;
  if (environment === 'staging') {
    sdkUrl = 'https://sdk.voyantis.io/staging/' + apiKey + '/vy-cs-sdk.min.js';
  } else {
    sdkUrl = 'https://sdk.voyantis.io/' + apiKey + '/vy-cs-sdk.min.js';
  }

  // ---- SDK load callbacks ----
  var onSuccess = function () {
    debugInit('script loaded, initializing...');

    var VoyantisSDK = copyFromWindow(SDK_NAMESPACE);

    if (VoyantisSDK && typeof VoyantisSDK.init === 'function') {
      VoyantisSDK.init(data.apiKey, environment);

      debugInit('initialized successfully');
      if (data.gtmOnSuccess) data.gtmOnSuccess();
    } else {
      debugInit('not found or invalid');
      if (data.gtmOnFailure) data.gtmOnFailure();
    }
  };

  var onFailure = function () {
    log('failed to load VoyantisSDK script');
    if (data.gtmOnFailure) { data.gtmOnFailure(); }
  };

  // ---- Load SDK ----
  injectScript(sdkUrl, onSuccess, onFailure);
} else if (data.tagType === 'identify') {
  // ---- Identify logic ----
  function isDefined(value) {
    return value !== undefined && value !== null && value !== '';
  }

  function addIfDefined(obj, key, value) {
    if (isDefined(value)) obj[key] = value;
  }

  // ---- Identify user ----
  if (!VoyantisSDK) {
    log('Voyantis SDK not found. Make sure Init tag has fired first.');
    if (data.gtmOnFailure) data.gtmOnFailure();
    return;
  }

  if (typeof VoyantisSDK.identify !== 'function') {
    log('Voyantis SDK identify function not available');
    if (data.gtmOnFailure) data.gtmOnFailure();
    return;
  }

  // Build userData object with all properties (only include defined values)
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

  // Only use userId if hasUserId checkbox is enabled
  var userId = data.hasUserId ? data.userId : undefined;

  VoyantisSDK.identify(userId, userData);
  if (userId) {
    debug('User identified with userId: ' + userId);
  } else {
    debug('User identified without userId');
  }

  if (data.gtmOnSuccess) data.gtmOnSuccess();
} else {
  log('Invalid tag type: ' + data.tagType);
  if (data.gtmOnFailure) data.gtmOnFailure();
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
        "publicId": "read_container_data",
        "versionId": "1"
      },
      "param": []
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

scenarios: []


___NOTES___

No template literals, no try/catch. Adds GA identifier lookup (event → gtag client_id → _ga cookie).


