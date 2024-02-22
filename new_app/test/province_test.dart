import 'package:flutter_test/flutter_test.dart';
import 'package:new_app/main.dart';

void main() {
  Province? province;
  group('Test Province:', () { 
    test('constructor 1', () {
      province = Province(
        id : "01",
        name: "Thành phố Hà Nội",
        level: "Thành phố Trung Ương", 
      );
      expect(province?.id, equals("01"));
      expect(province?.name, equals("Thành phố Hà Nội"));
      expect(province?.level, equals("Thành phố Trung Ương"));
    });
    test('constructor 2', () {
      province = Province(
        id : "02",
        name: "Tỉnh Hà Giang",
        level: "Tỉnh", 
      );
      expect(province?.id, equals("02"));
      expect(province?.name, equals("Tỉnh Hà Giang"));
      expect(province?.level, equals("Tỉnh"));
    });
  });
}