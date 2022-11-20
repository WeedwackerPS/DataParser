meta:
  id: dig_group_link_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: stage
    type: aux_types::vlq_base128_le_u
    if: has_field_stage
  - id: group_link_bundle_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_link_bundle_id
  - id: group_link_bundle_id2
    type: aux_types::vlq_base128_le_u
    if: has_field_group_link_bundle_id2
  - id: group_link_change_cond
    type: aux_types::vlq_base128_le_u
    if: has_field_group_link_change_cond
  - id: area_name
    type: aux_types::vlq_base128_le_u
    if: has_field_area_name
  - id: watcher_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_id
  - id: background
    type: aux_types::string
    if: has_field_background
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_stage: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_group_link_bundle_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_group_link_bundle_id2: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_group_link_change_cond: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_area_name: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_watcher_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_background: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
