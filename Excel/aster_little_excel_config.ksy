meta:
  id: aster_little_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: stage_id
    type: aux_types::vlq_base128_le_u
    if: has_field_stage_id
  - id: next_stage_id_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_next_stage_id_vec
  - id: open_day
    type: aux_types::vlq_base128_le_u
    if: has_field_open_day
  - id: mission_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_mission_vec
  - id: watcher_id_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_id_vec
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
instances:
  has_field_stage_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_next_stage_id_vec: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_open_day: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_mission_vec: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_watcher_id_vec: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_title: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
