meta:
  id: env_animal_gather_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__entity_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: animal_id
    type: aux_types::vlq_base128_le_u
    if: has_field_animal_id
  - id: entity_type
    type: enum__entity_type
    if: has_field_entity_type
  - id: gather_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gather_item_id
  - id: escape_radius
    type: aux_types::vlq_base128_le_u
    if: has_field_escape_radius
  - id: escape_time
    type: aux_types::vlq_base128_le_u
    if: has_field_escape_time
  - id: alive_time
    type: aux_types::vlq_base128_le_u
    if: has_field_alive_time
  - id: exclude_weathers
    type: aux_types::string
    if: has_field_exclude_weathers
instances:
  has_field_animal_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_entity_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_gather_item_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_escape_radius: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_escape_time: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_alive_time: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_exclude_weathers: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
