meta:
  id: enum__avatar_fashion_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: avatar_fashion_type
enums:
  avatar_fashion_type:
    0: fashion_type_none
    1: fashion_type_flycloak
