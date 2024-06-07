import 'package:test_7pay/app/modules/address/shared/models/address.dart';

abstract class AddressService {
  Future<List<Address>> getAddressByCepRequest(String cep);
}
