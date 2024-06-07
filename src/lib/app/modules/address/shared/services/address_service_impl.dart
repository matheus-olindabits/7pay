import 'package:test_7pay/app/modules/address/repository/address_repository.dart';
import 'package:test_7pay/app/modules/address/shared/services/address_service.dart';

class AddressServiceImpl implements AddressService {
  final AddressRepository _addressRepository;

  AddressServiceImpl(this._addressRepository);
}
