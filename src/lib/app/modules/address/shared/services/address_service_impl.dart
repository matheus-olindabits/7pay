import 'package:test_7pay/app/modules/address/repository/address_repository.dart';
import 'package:test_7pay/app/modules/address/shared/models/address.dart';
import 'package:test_7pay/app/modules/address/shared/services/address_service.dart';

class AddressServiceImpl implements AddressService {
  final AddressRepository _addressRepository;

  AddressServiceImpl(this._addressRepository);

  @override
  Future<List<Address>> getAddressByCepRequest(String cep) async {
    try {
      return await _addressRepository.getAddressByCep(cep);
    } catch (error) {
      rethrow;
    }
  }

  @override
  Future<List<Address>> getAddressByStreetRequest(
      String street, String uf, String city) async {
    try {
      return await _addressRepository.getAddressByStreet(street, uf, city);
    } catch (error) {
      rethrow;
    }
  }
}
