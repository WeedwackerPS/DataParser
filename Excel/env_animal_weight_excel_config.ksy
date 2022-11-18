meta:
  id: env_animal_weight_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__environment_type
    - ../EnumType/enum__entity_type
    - ../DictType/dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: env_type
    type: enum__environment_type
    if: has_field_env_type
  - id: weight_vec
    type: array_of__environment_weight_type__length_s
    if: has_field_weight_vec
instances:
  has_field_env_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_weight_vec: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
types:
  array_of__environment_weight_type__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: environment_weight_type
        repeat: expr
        repeat-expr: length.value
  environment_weight_type:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: animal_id
        type: aux_types::vlq_base128_le_u
        if: has_field_animal_id
      - id: entity_type
        type: enum__entity_type
        if: has_field_entity_type
      - id: weight
        type: aux_types::vlq_base128_le_u
        if: has_field_weight
      - id: alive_hour_map
        type: dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
        if: has_field_alive_hour_map
    instances:
      has_field_animal_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_entity_type: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_weight: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_alive_hour_map: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
