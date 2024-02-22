import 'package:flutter_test/flutter_test.dart';
import 'package:new_app/main.dart';

void main() {
  AddressInfo? addressInfo;
  Province province1 = Province(
    id : "01",
    name: "Thành phố Hà Nội",
    level: "Thành phố Trung Ương", 
  );
  District district1 = District(
    id: "001",
    name: "Quận Ba Đình",
    level: "Quận",
    provinceId: "01",
  );
  Ward ward1 = Ward(
    id: "00001",
    name: "Phường Phúc Xá",
    level: "Phường",
    districtId: "001",
    provinceId: "01",
  );
  group("Test AddressInfo:" , () { 
    test("constructor 1: ", () {
      addressInfo = AddressInfo(
        province: province1,
        district: district1,
        ward: ward1,
        street: "Hà Nội",
      );
      expect(addressInfo?.province, equals(province1));
      expect(addressInfo?.district, equals(district1));
      expect(addressInfo?.ward, equals(ward1));
      expect(addressInfo?.street, equals("Hà Nội"));
    });
  });
}