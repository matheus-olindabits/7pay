import 'package:test_7pay/app/modules/address/shared/models/address.dart';

abstract class AddressRepository {
  Future<List<Address>> getAddressByCep(String cep);
  Future<List<Address>> getAddressByStreet(
      String street, String uf, String city);
}
