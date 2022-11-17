meta:
  id: reliquary_main_prop_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__fight_prop_type
    - ../EnumType/enum__reliquary_main_affix_name
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: prop_depot_id
    type: aux_types::vlq_base128_le_u
    if: has_field_prop_depot_id
  - id: prop_type
    type: enum__fight_prop_type
    if: has_field_prop_type
  - id: affix_name
    type: enum__reliquary_main_affix_name
    if: has_field_affix_name
  - id: weight
    type: aux_types::vlq_base128_le_u
    if: has_field_weight
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_prop_depot_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_prop_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_affix_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_weight: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
