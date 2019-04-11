library google_maps_webservice.utils.test;

import 'dart:async';
import 'package:http/http.dart';
import 'package:test/test.dart';
import 'package:google_maps_webservice/src/utils.dart';

class DateTimeInstance extends GoogleDateTime {}

Future<void> launch([Client client]) async {
  group('Google Maps Utils', () {
    group('abstract class GoogleDateTime', () {
      DateTimeInstance utility;

      setUpAll(() {
        utility = DateTimeInstance();
      });

      group('dayTimeToDateTime', () {
        test('basic', () {
          final DateTime mondayAt1130 = utility.dayTimeToDateTime(0, '2330');

          expect(mondayAt1130.weekday, equals(1));
          expect(mondayAt1130.hour, equals(23));
          expect(mondayAt1130.minute, equals(30));
        });
        test('throws for an invalid time argument', () {
          expect(
              () => utility.dayTimeToDateTime(0, '230'), throwsArgumentError);
        });
      });
    });
  });
}

Future<void> main() => launch();
