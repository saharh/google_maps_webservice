import 'dart:async';
import 'package:test/test.dart';
import 'package:google_maps_webservice/src/utils.dart';

Future<void> main() async {
  group('Google Maps Utils', () {
    group('dayTimeToDateTime', () {
      test('basic', () {
        final mondayAt1130 = dayTimeToDateTime(0, '2330');

        expect(mondayAt1130.weekday, equals(1));
        expect(mondayAt1130.hour, equals(23));
        expect(mondayAt1130.minute, equals(30));
      });
      test('throws for an invalid time argument', () {
        expect(() => dayTimeToDateTime(0, '230'), throwsArgumentError);
      });
    });
  });
}
