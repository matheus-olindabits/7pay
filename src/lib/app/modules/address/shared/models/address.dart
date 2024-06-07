import 'dart:convert';

class Address {
  String cep;
  String street;
  String district;
  String city;
  String uf;
  String ibge;
  String? complement;
  Address({
    required this.cep,
    required this.street,
    required this.district,
    required this.city,
    required this.uf,
    required this.ibge,
    this.complement,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cep': cep,
      'street': street,
      'district': district,
      'city': city,
      'uf': uf,
      'ibge': ibge,
      'complement': complement,
    };
  }

  factory Address.fromMap(Map<String, dynamic> map) {
    return Address(
      cep: map['cep'] as String,
      street: map['logradouro'] as String,
      district: map['bairro'] as String,
      city: map['localidade'] as String,
      uf: map['uf'] as String,
      ibge: map['ibge'] as String,
      complement:
          map['complement'] != null ? map['complement'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Address.fromJson(String source) =>
      Address.fromMap(json.decode(source) as Map<String, dynamic>);
}
