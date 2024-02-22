import 'package:flutter_test/flutter_test.dart';
import 'package:new_app/main.dart';

void main() {
  District? district;
  group("Test District: ", () {
    test("constructor 1: ", () {
      district = District(
        id: "001",
        name: "Quận Ba Đình",
        level: "Quận",
        provinceId: "01",
      );
      expect(district?.id, equals("001"));
      expect(district?.name, equals("Quận Ba Đình"));
      expect(district?.level, equals("Quận"));
      expect(district?.provinceId, equals("01"));
    });
    test("constructor 2: ", () {
      district = District(
        id: "024",
        name: "Thành phố Hà Giang",
        level: "Thành phố",
        provinceId: "02",
      );
      expect(district?.id, equals("024"));
      expect(district?.name, equals("Thành phố Hà Giang"));
      expect(district?.level, equals("Thành phố"));
      expect(district?.provinceId, equals("02"));
    });
  });
}