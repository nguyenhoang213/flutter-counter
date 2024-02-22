import 'package:flutter_test/flutter_test.dart';
import 'package:new_app/main.dart';

void main() {
  Ward? ward;
  group("Test Ward; ", () { 
    test("constructor 1: ", () {
      ward = Ward(
        id: "00001",
        name: "Phường Phúc Xá",
        level: "Phường",
        districtId: "001",
        provinceId: "01",
      );
      expect(ward?.id, equals("00001"));
      expect(ward?.name, equals("Phường Phúc Xá"));
      expect(ward?.level, equals("Phường"));
      expect(ward?.districtId, equals("001"));
      expect(ward?.provinceId, equals("01"));
    });
    test("constructor 2: ", () {
      ward = Ward(
        id: "00688",
        name: "Phường Quang Trung",
        level: "Phường",
        districtId: "024",
        provinceId: "02",
      );
      expect(ward?.id, equals("00688"));
      expect(ward?.name, equals("Phường Quang Trung"));
      expect(ward?.level, equals("Phường"));
      expect(ward?.districtId, equals("024"));
      expect(ward?.provinceId, equals("02"));
    });
  });
}