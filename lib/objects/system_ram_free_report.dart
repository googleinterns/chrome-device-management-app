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

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
part 'system_ram_free_report.g.dart';

/// The object holds a report of amounts of available RAM memory.
///
/// See document https://developers.google.com/admin-sdk/directory/v1/reference/chromeosdevices#resource.

abstract class SystemRamFreeReport
    implements Built<SystemRamFreeReport, SystemRamFreeReportBuilder> {
  /// Anonymus constructor
  SystemRamFreeReport._();

  /// Factory constructor
  static Serializer<SystemRamFreeReport> get serializer =>
      _$systemRamFreeReportSerializer;

  /// Serializer to parse from Json
  factory SystemRamFreeReport(
          [void Function(SystemRamFreeReportBuilder) updates]) =
      _$SystemRamFreeReport;

  /// Date and time the report was received.
  @nullable
  String get reportTime;

  /// System free RAM information.
  @nullable
  BuiltList<String> get systemRamFreeInfo;
}
