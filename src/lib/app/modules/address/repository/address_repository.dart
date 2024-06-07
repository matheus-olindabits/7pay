import 'package:test_7pay/app/modules/address/shared/models/address.dart';

abstract class AddressRepository {
  Future<List<Address>> getAddressByCep(String cep);
}
