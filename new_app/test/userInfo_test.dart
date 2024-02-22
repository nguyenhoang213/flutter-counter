import 'package:flutter_test/flutter_test.dart';
import 'package:new_app/main.dart';

void main() {
  UserInfo? userInfo;
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
  AddressInfo? addressInfo = AddressInfo(
    province: province1,
    district: district1,
    ward: ward1,
    street: "Hà Nội",
  );
  group("Test UserInfo: ", () { 
    test("constructor: ", () {
      userInfo = UserInfo(
        name: "hoangnguyen",
        email: "hoang23032003@gmail.com",
        phoneNumber: "0969839072",
        birthDate: DateTime.utc(2003, 03, 21),
        address: addressInfo,
      );
      expect(userInfo?.name, equals("hoangnguyen"));
      expect(userInfo?.email, equals("hoang23032003@gmail.com"));
      expect(userInfo?.phoneNumber, equals("0969839072"));
      expect(userInfo?.birthDate, equals(DateTime.utc(2003, 03, 21)));
      expect(userInfo?.address, equals(addressInfo));
    });
  });
}