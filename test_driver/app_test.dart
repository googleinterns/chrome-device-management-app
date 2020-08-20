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
    // Bool function to verify that a widget is on the view.
    isPresent(SerializableFinder byValueKey, FlutterDriver driver,
        {Duration timeout = const Duration(seconds: 1)}) async {
      try {
        await driver.waitFor(byValueKey, timeout: timeout);
        return true;
      } catch (exception) {
        return false;
      }
    }

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
        dyScroll: -400.0,
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

      // Verify that device 31 isn't present.
      expect(
          await isPresent(
              find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '31'), driver),
          isFalse);
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

    test('See detailed view for first device', () async {
      // Finds the serial number text widget of the first element in the list.
      final deviceList = find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '1');
      //Finds the organization text field from the hardware and os card widget.
      final deviceOrganization = find.byValueKey(HARDWARE_OS_ORGANIZATION_KEY);

      // Taps on the device 1 from the list.
      driver.tap(deviceList);
      // Test waits for organization text field to appear.
      driver.waitFor(deviceOrganization);

      // Verify that the item contains the correct text.
      expect(await driver.getText(find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY)),
          'serialNumber 1');
      expect(await driver.getText(find.byValueKey(STATUS_OF_DEVICE_KEY)),
          'ACTIVE');
      expect(await driver.getText(find.byValueKey(LAST_SYNC_OF_DEVICE_KEY)),
          'Last Sync: Oct 1, 2019');
      expect(
          await driver.getText(find.byValueKey(HARDWARE_OS_ORGANIZATION_KEY)),
          '/');
      expect(await driver.getText(find.byValueKey(HARDWARE_OS_MODEL_KEY)),
          'ASUS Chromebook Flip C100PA');
      expect(
          await driver.getText(
              find.byValueKey(HARDWARE_OS_SERIAL_NUMBER_OF_DEVICE_KEY)),
          'serialNumber 1');
    });

    test('See more hardware an OS card', () async {
      // Finds the hardware show more/less button.
      final hardwareMoreLessButton =
          find.byValueKey(HARDWARE_OS_MORE_LESS_BUTTON_KEY);
      //Tap on the show more button from hardware and os card widget.
      driver.tap(hardwareMoreLessButton);
      // Scrolls through the list of devices until it finds the auto exporation
      // text.
      await driver.scrollUntilVisible(
        find.byValueKey(DETAILED_VIEW_SCROLLINNG_LIST),
        find.byValueKey(HARDWARE_OS_AUTO_UPDATE_EXPIRATION_KEY),
        dyScroll: 5.0,
      );
      // Validate that all fields have the correct information.
      expect(await driver.getText(find.byValueKey(HARDWARE_OS_MAC_ADDRESS_KEY)),
          'macAddress 1');
      expect(
          await driver
              .getText(find.byValueKey(HARDWARE_OS_LAST_KNOWN_NETWORK_KEY)),
          '-');
      expect(await driver.getText(find.byValueKey(HARDWARE_OS_VERSION_KEY)),
          '54.0.2837.0');
      expect(
          await driver
              .getText(find.byValueKey(HARDWARE_OS_PLATAFORM_VERSION_KEY)),
          '8737.1.0');
      expect(await driver.getText(find.byValueKey(HARDWARE_OS_DEVICE_ID_KEY)),
          'a1');
      expect(
          await driver
              .getText(find.byValueKey(HARDWARE_OS_LAST_ENROLLMENT_TIME_KEY)),
          'Jun 30, 2020');
      expect(
          await driver
              .getText(find.byValueKey(HARDWARE_OS_AUTO_UPDATE_EXPIRATION_KEY)),
          'Jul 1, 2020');
    });
    test('See custom fields', () async {
      // Finds the hardware and OS show more/less button.
      final hardwareMoreLessButton =
          find.byValueKey(HARDWARE_OS_MORE_LESS_BUTTON_KEY);
      // Taps on the show more/less hardware and os button.
      await driver.tap(hardwareMoreLessButton);

      // Verifies that custom fields have the correct information without
      // exapnding it.
      expect(await driver.getText(find.byValueKey(CUSTOM_FIELDS_ASSET_ID_KEY)),
          'annotated asset id 1');
      expect(
          await driver.getText(find.byValueKey(CUSTOM_FIELDS_USER_KEY)), 'Bob');
      expect(await driver.getText(find.byValueKey(CUSTOM_FIELDS_LOCATION_KEY)),
          'SF');
    });
    test('See more custom fields', () async {
      // Finds the custom fields show more/less button.
      final customMoreLessButton =
          find.byValueKey(CUSTOM_FIELDS_MORE_LESS_BUTTON_KEY);
      // Taps on the show more/less custom fields button.
      await driver.tap(customMoreLessButton);
      // Verifies that custom fields have the correct information.
      expect(await driver.getText(find.byValueKey(CUSTOM_FIELDS_ASSET_ID_KEY)),
          'annotated asset id 1');
      expect(
          await driver.getText(find.byValueKey(CUSTOM_FIELDS_USER_KEY)), 'Bob');
      expect(await driver.getText(find.byValueKey(CUSTOM_FIELDS_LOCATION_KEY)),
          'SF');
      expect(await driver.getText(find.byValueKey(CUSTOM_FIELDS_NOTES_KEY)),
          'notes 1');
    });

    test('Disable current device', () async {
      // Finds the custom fields show more/less button.
      final customMoreLessButton =
          find.byValueKey(CUSTOM_FIELDS_MORE_LESS_BUTTON_KEY);
      // Scrolls under to find the custom fields show more/less button.
      await driver.scrollUntilVisible(
        find.byValueKey(DETAILED_VIEW_SCROLLINNG_LIST),
        customMoreLessButton,
        dyScroll: -5.0,
      );
      // Tap on the custom fields show more/less button.
      await driver.tap(customMoreLessButton);
      //Find the remote coomand menu button and tap it.
      final remoteCommandMenu = find.byValueKey(REMOTE_COMMAND_MENU);
      await driver.tap(remoteCommandMenu);
      // Find the disable device option and tap it.
      final disableButton = find.byValueKey(REMOTE_COMMAND_DISABLE);
      await driver.tap(disableButton);
      // Find the status fields and scroll until it is on the view.
      final status = find.byValueKey(STATUS_OF_DEVICE_KEY);
      await driver.scrollUntilVisible(
        find.byValueKey(DETAILED_VIEW_SCROLLINNG_LIST),
        status,
        dyScroll: 100.0,
      );
      // Verify that the status is disabled.
      expect(await driver.getText(status), 'DISABLED');
    });

    test('Reenable current device', () async {
      //Find the remote coomand menu button and tap it.
      final remoteCommandMenu = find.byValueKey(REMOTE_COMMAND_MENU);
      await driver.tap(remoteCommandMenu);
      // Find the reenable device option and tap it.
      final reenableButton = find.byValueKey(REMOTE_COMMAND_REENABLE);
      await driver.tap(reenableButton);
      // Find the status fields.
      final status = find.byValueKey(STATUS_OF_DEVICE_KEY);
      // Verify that the status is active.
      expect(await driver.getText(status), 'ACTIVE');
    });

    test('Deprovision current device', () async {
      //Find the remote coomand menu button and tap it.
      final remoteCommandMenu = find.byValueKey(REMOTE_COMMAND_MENU);
      await driver.tap(remoteCommandMenu);
      // Find the deprovision device option and tap it.
      final deprovisionButton = find.byValueKey(REMOTE_COMMAND_DEPROVISION);
      await driver.tap(deprovisionButton);
      //Find deproviion reason of retiring device and select it.
      final deprovisionReason =
          find.byValueKey(DEPROVISION_REASON_RETIRING_DEVICE);
      await driver.tap(deprovisionReason);
      // Find the apply filters button and tap it.
      final deprovisionApply = find.byValueKey(DEPROVISION_REASON_APPLY);
      await driver.tap(deprovisionApply);
      // Find the status fields.
      final status = find.byValueKey(STATUS_OF_DEVICE_KEY);
      // Verify that the status is deprovisioned.
      expect(await driver.getText(status), 'DEPROVISIONED');
    });

    test('Return to list view', () async {
      // Find the back button and tap it.
      await driver.tap(find.pageBack());
      // Verify that is on the device list view.
      expect(
          await driver
              .getText(find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '1')),
          'serialNumber 1');
      expect(
          await driver
              .getText(find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '2')),
          'serialNumber 2');
    });

    test('Apply a filter', () async {
      // Find the filters menu button and tap it.
      final filterButton = find.byValueKey(FILTERS_MENU);
      await driver.tap(filterButton);
      // Find the filters serial number option in the menu and tap it.
      final filterOption = find.byValueKey('Serial Number');
      await driver.tap(filterOption);
      // Input text on the filter text field.
      await driver.enterText('serialNumber 21');
      // Find the apply filters button and tap it.
      final filterApply = find.byValueKey(FILTERS_APPLY);
      await driver.tap(filterApply);
      // Verifiy that filter is applied.
      expect(
          await driver
              .getText(find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '1')),
          'serialNumber 21');
    });

    test('Take out filter', () async {
      // Find and tap the cancel filter button.
      final filterCancel = find.byValueKey(FILTERS_CANCEL);
      await driver.tap(filterCancel);

      // Verify that is on the device list view without filters.
      expect(
          await driver
              .getText(find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '1')),
          'serialNumber 1');
      expect(
          await driver
              .getText(find.byValueKey(SERIAL_NUMBER_OF_DEVICE_KEY + '2')),
          'serialNumber 2');
    });
  });
}
