meta:
  id: entity_multi_player_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__f4__length_u
    - ../EnumType/enum__fight_prop_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: prop_per_vec
    type: array_of__entity_prop_per_mp_config__length_s
    if: has_field_prop_per_vec
  - id: endure_num_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_endure_num_vec
  - id: element_shield_per_vec
    type: array_of__f4__length_u
    if: has_field_element_shield_per_vec
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_prop_per_vec: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_endure_num_vec: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_element_shield_per_vec: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
types:
  array_of__entity_prop_per_mp_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: entity_prop_per_mp_config
        repeat: expr
        repeat-expr: length.value
  entity_prop_per_mp_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: prop_type
        type: enum__fight_prop_type
        if: has_field_prop_type
      - id: prop_value_vec
        type: array_of__f4__length_u
        if: has_field_prop_value_vec
    instances:
      has_field_prop_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_prop_value_vec: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
