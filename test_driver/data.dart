class Data {
  // Access token to make requests to the API.
  static const ACCESS_TOKEN = '123';
  // Next page token to the second page.
  static const NEXT_PAGE_2 = '2';
  String status = 'ACTIVE';
  // First page of devices in json.
  String firstPage() {
    return """ 
    {
    "kind": "kind",
    "etag": "etag",
    "chromeosdevices": [
      {
        "kind": "kind 1",
        "etag": "etag 1",
        "deviceId": "a1",
        "serialNumber": "serialNumber 1",
        "status": "$status",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 1",
        "annotatedUser": "annotated user 1",
        "annotatedLocation": "annotated location 1",
        "annotatedAssetId": "annotated asset id 1",
        "notes": "notes 1"       
      },
      {
        "kind": "kind 2",
        "etag": "etag 2",
        "deviceId": "b2",
        "serialNumber": "serialNumber 2",
        "status": "status 2",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 2",
        "annotatedUser": "annotated user 2",
        "annotatedLocation": "annotated location 2",
        "annotatedAssetId": "annotated asset id 2",
        "notes": "notes 2"       
      },
            {
        "kind": "kind 3",
        "etag": "etag 3",
        "deviceId": "c3",
        "serialNumber": "serialNumber 3",
        "status": "status 3",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 3",
        "annotatedUser": "annotated user 3",
        "annotatedLocation": "annotated location 3",
        "annotatedAssetId": "annotated asset id 3",
        "notes": "notes 3"       
      },
            {
        "kind": "kind 4",
        "etag": "etag 4",
        "deviceId": "d4",
        "serialNumber": "serialNumber 4",
        "status": "status 4",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 4",
        "annotatedUser": "annotated user 4",
        "annotatedLocation": "annotated location 4",
        "annotatedAssetId": "annotated asset id 4",
        "notes": "notes 4"       
      },
            {
        "kind": "kind 5",
        "etag": "etag 5",
        "deviceId": "e5",
        "serialNumber": "serialNumber 5",
        "status": "status 5",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 5",
        "annotatedUser": "annotated user 5",
        "annotatedLocation": "annotated location 5",
        "annotatedAssetId": "annotated asset id 5",
        "notes": "notes 5"       
      },
            {
        "kind": "kind 6",
        "etag": "etag 6",
        "deviceId": "f6",
        "serialNumber": "serialNumber 6",
        "status": "status 6",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 6",
        "annotatedUser": "annotated user 6",
        "annotatedLocation": "annotated location 6",
        "annotatedAssetId": "annotated asset id 6",
        "notes": "notes 6"       
      },
            {
        "kind": "kind 7",
        "etag": "etag 7",
        "deviceId": "g7",
        "serialNumber": "serialNumber 7",
        "status": "status 7",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 7",
        "annotatedUser": "annotated user 7",
        "annotatedLocation": "annotated location 7",
        "annotatedAssetId": "annotated asset id 7",
        "notes": "notes 7"       
      },
            {
        "kind": "kind 8",
        "etag": "etag 8",
        "deviceId": "h8",
        "serialNumber": "serialNumber 8",
        "status": "status 8",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 8",
        "annotatedUser": "annotated user 8",
        "annotatedLocation": "annotated location 8",
        "annotatedAssetId": "annotated asset id 8",
        "notes": "notes 8"       
      },
            {
        "kind": "kind 9",
        "etag": "etag 9",
        "deviceId": "i9",
        "serialNumber": "serialNumber 9",
        "status": "status 9",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 9",
        "annotatedUser": "annotated user 9",
        "annotatedLocation": "annotated location 9",
        "annotatedAssetId": "annotated asset id 9",
        "notes": "notes 9"       
      },
            {
        "kind": "kind 10",
        "etag": "etag 10",
        "deviceId": "j10",
        "serialNumber": "serialNumber 10",
        "status": "status 10",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 10",
        "annotatedUser": "annotated user 10",
        "annotatedLocation": "annotated location 10",
        "annotatedAssetId": "annotated asset id 10",
        "notes": "notes 10"       
      },
            {
        "kind": "kind 11",
        "etag": "etag 11",
        "deviceId": "k11",
        "serialNumber": "serialNumber 11",
        "status": "status 11",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 11",
        "annotatedUser": "annotated user 11",
        "annotatedLocation": "annotated location 11",
        "annotatedAssetId": "annotated asset id 11",
        "notes": "notes 11"       
      },
            {
        "kind": "kind 12",
        "etag": "etag 12",
        "deviceId": "l12",
        "serialNumber": "serialNumber 12",
        "status": "status 12",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 12",
        "annotatedUser": "annotated user 12",
        "annotatedLocation": "annotated location 12",
        "annotatedAssetId": "annotated asset id 12",
        "notes": "notes 12"       
      },
            {
        "kind": "kind 13",
        "etag": "etag 13",
        "deviceId": "m13",
        "serialNumber": "serialNumber 13",
        "status": "status 13",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 13",
        "annotatedUser": "annotated user 13",
        "annotatedLocation": "annotated location 13",
        "annotatedAssetId": "annotated asset id 13",
        "notes": "notes 13"       
      },
            {
        "kind": "kind 14",
        "etag": "etag 14",
        "deviceId": "n14",
        "serialNumber": "serialNumber 14",
        "status": "status 14",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 14",
        "annotatedUser": "annotated user 14",
        "annotatedLocation": "annotated location 14",
        "annotatedAssetId": "annotated asset id 14",
        "notes": "notes 14"       
      },
            {
        "kind": "kind 15",
        "etag": "etag 15",
        "deviceId": "o15",
        "serialNumber": "serialNumber 15",
        "status": "status 15",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 15",
        "annotatedUser": "annotated user 15",
        "annotatedLocation": "annotated location 15",
        "annotatedAssetId": "annotated asset id 15",
        "notes": "notes 15"       
      }
    ],
    "nextPageToken": "$NEXT_PAGE_2"
  }
""";
  }

  // Second page of devices in json.
  static const SECOND_PAGE = """ 
    {
    "kind": "kind",
    "etag": "etag",
    "chromeosdevices": [
      {
        "kind": "kind 16",
        "etag": "etag 16",
        "deviceId": "p16",
        "serialNumber": "serialNumber 16",
        "status": "status 16",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 16",
        "annotatedUser": "annotated user 16",
        "annotatedLocation": "annotated location 16",
        "annotatedAssetId": "annotated asset id 16",
        "notes": "notes 16"       
      },
      {
        "kind": "kind 17",
        "etag": "etag 17",
        "deviceId": "q17",
        "serialNumber": "serialNumber 17",
        "status": "status 17",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 17",
        "annotatedUser": "annotated user 17",
        "annotatedLocation": "annotated location 17",
        "annotatedAssetId": "annotated asset id 17",
        "notes": "notes 17"       
      },
            {
        "kind": "kind 18",
        "etag": "etag 18",
        "deviceId": "r18",
        "serialNumber": "serialNumber 18",
        "status": "status 18",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 18",
        "annotatedUser": "annotated user 18",
        "annotatedLocation": "annotated location 18",
        "annotatedAssetId": "annotated asset id 18",
        "notes": "notes 18"       
      },
            {
        "kind": "kind 19",
        "etag": "etag 19",
        "deviceId": "s19",
        "serialNumber": "serialNumber 19",
        "status": "status 19",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 19",
        "annotatedUser": "annotated user 19",
        "annotatedLocation": "annotated location 19",
        "annotatedAssetId": "annotated asset id 19",
        "notes": "notes 19"       
      },
            {
        "kind": "kind 20",
        "etag": "etag 20",
        "deviceId": "t20",
        "serialNumber": "serialNumber 20",
        "status": "status 20",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 20",
        "annotatedUser": "annotated user 20",
        "annotatedLocation": "annotated location 20",
        "annotatedAssetId": "annotated asset id 20",
        "notes": "notes 20"       
      },
            {
        "kind": "kind 21",
        "etag": "etag 21",
        "deviceId": "i21",
        "serialNumber": "serialNumber 21",
        "status": "status 21",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 21",
        "annotatedUser": "annotated user 21",
        "annotatedLocation": "annotated location 21",
        "annotatedAssetId": "annotated asset id 21",
        "notes": "notes 21"       
      },
            {
        "kind": "kind 22",
        "etag": "etag 22",
        "deviceId": "u22",
        "serialNumber": "serialNumber 22",
        "status": "status 22",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 22",
        "annotatedUser": "annotated user 22",
        "annotatedLocation": "annotated location 22",
        "annotatedAssetId": "annotated asset id 22",
        "notes": "notes 22"       
      },
            {
        "kind": "kind 23",
        "etag": "etag 23",
        "deviceId": "v23",
        "serialNumber": "serialNumber 23",
        "status": "status 23",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 23",
        "annotatedUser": "annotated user 23",
        "annotatedLocation": "annotated location 23",
        "annotatedAssetId": "annotated asset id 23",
        "notes": "notes 23"       
      },
            {
        "kind": "kind 24",
        "etag": "etag 24",
        "deviceId": "w24",
        "serialNumber": "serialNumber 24",
        "status": "status 24",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 24",
        "annotatedUser": "annotated user 24",
        "annotatedLocation": "annotated location 24",
        "annotatedAssetId": "annotated asset id 24",
        "notes": "notes 24"       
      },
            {
        "kind": "kind 25",
        "etag": "etag 25",
        "deviceId": "x25",
        "serialNumber": "serialNumber 25",
        "status": "status 25",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 25",
        "annotatedUser": "annotated user 25",
        "annotatedLocation": "annotated location 25",
        "annotatedAssetId": "annotated asset id 25",
        "notes": "notes 25"       
      },
            {
        "kind": "kind 26",
        "etag": "etag 26",
        "deviceId": "y26",
        "serialNumber": "serialNumber 26",
        "status": "status 26",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 26",
        "annotatedUser": "annotated user 26",
        "annotatedLocation": "annotated location 26",
        "annotatedAssetId": "annotated asset id 26",
        "notes": "notes 26"       
      },
            {
        "kind": "kind 27",
        "etag": "etag 27",
        "deviceId": "z27",
        "serialNumber": "serialNumber 27",
        "status": "status 27",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 27",
        "annotatedUser": "annotated user 27",
        "annotatedLocation": "annotated location 27",
        "annotatedAssetId": "annotated asset id 27",
        "notes": "notes 27"       
      },
            {
        "kind": "kind 28",
        "etag": "etag 28",
        "deviceId": "828",
        "serialNumber": "serialNumber 28",
        "status": "status 28",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 28",
        "annotatedUser": "annotated user 28",
        "annotatedLocation": "annotated location 28",
        "annotatedAssetId": "annotated asset id 28",
        "notes": "notes 28"       
      },
            {
        "kind": "kind 29",
        "etag": "etag 29",
        "deviceId": "929",
        "serialNumber": "serialNumber 29",
        "status": "status 29",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 29",
        "annotatedUser": "annotated user 29",
        "annotatedLocation": "annotated location 29",
        "annotatedAssetId": "annotated asset id 29",
        "notes": "notes 29"       
      },
            {
        "kind": "kind 30",
        "etag": "etag 30",
        "deviceId": "030",
        "serialNumber": "serialNumber 30",
        "status": "status 30",
        "lastSync": "2019-10-01T18:50:21.781Z", 
        "supportEndDate": "supportEndDate 30",
        "annotatedUser": "annotated user 30",
        "annotatedLocation": "annotated location 30",
        "annotatedAssetId": "annotated asset id 30",
        "notes": "notes 30"       
      }
    ]
  }
""";

  String detailedDevice() {
    return """
    {
      "kind": "kind 1",
      "etag": "etag1",
      "deviceId": "a1",
      "serialNumber": "serialNumber 1",
      "status": "$status",
      "lastSync": "2019-10-01T18:50:21.781Z",
      "annotatedUser": "Bob",
      "annotatedLocation": "SF",
      "annotatedAssetId": "IDac9492",
      "model": "ASUS Chromebook Flip C100PA",
      "osVersion": "54.0.2837.0",
      "platformVersion": "8737.1.0",
      "firmwareVersion": "Google_Veyron_Minnie.6588.197.0",
      "macAddress": "macAddress 1",
      "bootMode": "Verified",
      "lastEnrollmentTime": "2020-06-30T01:55:50.886Z",
      "orgUnitPath": "/",
      "systemRamTotal": "0",
      "annotatedAssetId": "annotated asset id 1",
      "notes": "notes 1",
      "autoUpdateExpiration": "1593586800000"
    }
    """;
  }

  static const FILTERED_PAGE = """ 
    {
    "kind": "kind",
    "etag": "etag",
    "chromeosdevices": [
        {
          "kind": "kind 21",
          "etag": "etag 21",
          "deviceId": "i21",
          "serialNumber": "serialNumber 21",
          "status": "status 21",
          "lastSync": "2019-10-01T18:50:21.781Z", 
          "supportEndDate": "supportEndDate 21",
          "annotatedUser": "annotated user 21",
          "annotatedLocation": "annotated location 21",
          "annotatedAssetId": "annotated asset id 21",
          "notes": "notes 21"       
        }
      ]
    }
      """;

  /// Changes status to disable.
  void disable() {
    status = 'DISABLED';
  }

  /// Changes status to active.
  void reenable() {
    status = 'ACTIVE';
  }

  /// Changes status to deprovision.
  void deprovision() {
    status = 'DEPROVISIONED';
  }
}
