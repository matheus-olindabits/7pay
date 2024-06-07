import 'package:test_7pay/app/core/dio/custom_dio.dart';
import 'package:test_7pay/app/modules/address/repository/address_repository.dart';
import 'package:test_7pay/app/modules/address/shared/models/address.dart';

class AddressRepositoryImpl implements AddressRepository {
  @override
  Future<List<Address>> getAddressByCep(String cep) async {
    return CustomDio.instance.get('/$cep/json').then((res) {
      final addressList = res.data;

      return addressList.map<Address>((coinMap) {
        return Address.fromMap(coinMap);
      }).toList();
    });
  }
}
