___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Accessibility by CorpoWid",
  "brand": {
    "id": "brand_corpowid",
    "displayName": "CorpoWid",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAADwAAAA8CAMAAAANIilAAAAA2FBMVEUAAAAgUP8gUP8oWP8gUP8lVf8gUP8kVP8jU/8jU/8jUv8iUv8kVP8iUv8iUv8kVP8iUf8iUv8hUf8jU/8jU/8jU/8jUv8iU/8iUv8iUv8jU/8jU/8jU/8jU/8wXf8xXv8+aP8/af4/af9Lcv9Mc/9NdP5NdP9Zff9afv5afv9niP5niP9oif5oif90kv91k/51k/+Cnf6Cnf+Dnv6Dnv+QqP6QqP+Rqf6dsv6es/6es/+ftP6rvf6svv65yP66yf7H0/7U3f7V3v7i6P7j6f7w8/7x9P7+/v62UrrmAAAAHXRSTlMAECAgMDBAQFBfYHBwf4CAkJ+goLC/wM/Q39/g7wd3OVsAAAMJSURBVEjHnZdhf5pIEIdHvcS0tlprUwPlAeoljabpmTslNXdiSET9/t/oXrAILrtoO6/8uTzMzH9mZxcRkzU7/aEL3vCyey6/ZI3OJSVz+n80TmY7HhVz+s1T0FbJq387X8RxHH3/E7g8Hv954fY22exyWy9DOOb9zR59WO8ObRXivK1jLwqvu6o9wvuafFXM4XJntHVYQ7uZTI+b3e6X6Y452QPat8jW8mzJliwBr2OAB/ZkS/YP4FScv4f55ii724SAd6GzfiXi7c+AcarXG4A3h2xYFeobQPCq/TsBoF3uDgMbZ1X/of39AoC3z7vlYihQpFrGpBlcFkI/GrRZqFataOYDoCrWqr699NDS8lavoRybWyP2gblhYVK41h2ns6dkm3XjKlavfX2KXg/6LM+6o0V2DXAzjdXT2+fZOADKmj4A0BSRoSa1n+/qYDyd3n/dz4eVLkdHpMF1ZdOb7LpSxr7IGQ/6xlvNbw/B8K/FS7USQ5EBkUnql0Ue/jzZmDvIEXGJrXsXqMSlogOQc2zwOoMtq9eAdH8T/hs8+QRPvwPHMJQhzGrhyLy6gs/iwaRWsJl1tStAsLUFZhoGBdwWwLKppqpJbbAj8gVb3CPVJIkl577IECC1p2xLOqItMgCYWqKeL32bJHc08xMqMQ6hMHuFMW7fEZEmGLOOs7ZOLJKs6IuopHnWV8fKpQ9sTVG3RUS6AIy0B9J8YkfGJktxsmuXZ+rCKB+6a2PcU9T9JHOtaTraT7yJQbJYORZpuNVyJsVRsaiWOh0VR9VZ1gypVuRlUbNAY3lXHJLvKuW6Kx1wU0Bje+Xjuad3ykvo/1vcgYrfBlbRk90J9hTorMiFC/x3FE3G7IUu36QGEKT1aHqXH1FV3GVUR29/BuqQMVqvjo6z4eBYL852Ohmr0XBhv/j2GJnm9HaWj5Ve3ZX7rcs0NSd7lM1Uvy/v7nWBlrvSdt//DMF99JwkyXM8uyl945yd8olz9uGqejPweid/XrXaA7eMDk9HM2t3P1158OXqY8dc3P8BF4NcGA5XwMoAAAAASUVORK5CYII\u003d"
  },
  "description": "With Corpowid, you can provide functionality intended for users with disabilities, including epilepsy, dyslexia, limited vision and other health limitations.",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "corpWidLicense",
    "displayName": "CorpoWid Licence Code",
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "websiteDefaultLang",
    "displayName": "Website Default Lang",
    "simpleValueType": true,
    "defaultValue": "en"
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const encode = require('encodeUriComponent');
const log = require('logToConsole');
const injectScript = require('injectScript');

const accDeaultLang = data.websiteDefaultLang;
const accUuid = data.corpWidLicense;
 

injectScript('https://cdn.corpowid.com/corpowid.js?account=' + encode(accUuid)+'&lang='+encode(accDeaultLang), data.gtmOnSuccess, data.gtmOnFailure);


___WEB_PERMISSIONS___

[
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
                "string": "https://cdn.corpowid.com/corpowid.js*"
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

Created on 14.11.2024 21:18:13


