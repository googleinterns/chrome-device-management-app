// Copyright 2020 Google LLC
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     https://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:chrome_management_app/models/keys_util.dart';
import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

void main() {
  group('Chrome Devices App', () {
    // Flutter Driver
    FlutterDriver driver;

    // Connect to the Flutter driver before running any tests.
    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    // Close the connection to the driver after the tests have completed.
    tearDownAll(() async {
      if (driver != null) {
        await driver.close();
      }
    });
    // Ensure that the driver is ok.
    test('check flutter driver health', () async {
      final health = await driver.checkHealth();
      expect(health.status, HealthStatus.ok);
    });

    test('verifies the list contains a specific item', () async {
      // Finds the list of devices.
      final listFinder = find.byValueKey(LIST_OF_DEVICES_KEY);
      // Finds the serial number text widget of the element 15 in the list.
      final itemFinder = find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '15');

      // Scrolls through the list of devices until it finds the itemFinder.
      await driver.scrollUntilVisible(
        listFinder,
        itemFinder,
        dyScroll: -300.0,
      );

      // Verify that the item contains the correct text.
      expect(
          await driver
              .getText(find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '15')),
          'serialNumber 15');
    });

    test('Scroll and load the next page', () async {
      // Finds the list of devices.
      final listFinder = find.byValueKey(LIST_OF_DEVICES_KEY);
      // Finds the serial number text widget of the element 30 in the list.
      final itemFinder = find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '30');

      // Scrolls through the list of devices until it finds the itemFinder.
      await driver.scrollUntilVisible(
        listFinder,
        itemFinder,
        dyScroll: -300.0,
      );
      // Verify that the item contains the correct text.
      expect(
          await driver
              .getText(find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '30')),
          'serialNumber 30');
    });

    test('Scroll top to first item', () async {
      // Finds the list of devices.
      final listFinder = find.byValueKey(LIST_OF_DEVICES_KEY);
      // Finds the serial number text widget of the first element in the list.
      final itemFinder = find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '1');

      // Scrolls through the list of devices until it finds the itemFinder.
      await driver.scrollUntilVisible(
        listFinder,
        itemFinder,
        dyScroll: 300.0,
      );

      // Verify that the item contains the correct text.
      expect(
          await driver
              .getText(find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '1')),
          'serialNumber 1');
    });
  });
}
