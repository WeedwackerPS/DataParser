meta:
  id: find_hilichurl_hili_wei_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: day_index
    type: aux_types::vlq_base128_le_u
    if: has_field_day_index
  - id: duration_hint
    type: aux_types::string
    if: has_field_duration_hint
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: position_center
    type: array_of__f4__length_u
    if: has_field_position_center
  - id: position_radius
    type: aux_types::vlq_base128_le_u
    if: has_field_position_radius
  - id: watcher_id
    type: aux_types::vlq_base128_le_u
    if: has_field_watcher_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_day_index: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_duration_hint: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_group_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_position_center: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_position_radius: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_watcher_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
