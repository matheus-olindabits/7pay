import 'package:test_7pay/app/core/dio/custom_dio.dart';
import 'package:test_7pay/app/modules/address/repository/address_repository.dart';
import 'package:test_7pay/app/modules/address/shared/models/address.dart';

class AddressRepositoryImpl implements AddressRepository {
  @override
  Future<List<Address>> getAddressByCep(String cep) async {
    return CustomDio.instance.get('/$cep/json').then((res) {
      final addressList = Address.fromMap(res.data);
      return [addressList];
    });
  }

  @override
  Future<List<Address>> getAddressByStreet(
      String street, String uf, String city) async {
    return CustomDio.instance.get('/$uf/$city/$street/json').then((res) {
      final productList = res.data;

      return productList.map<Address>((coinMap) {
        return Address.fromMap(coinMap);
      }).toList();
    });
  }
}
