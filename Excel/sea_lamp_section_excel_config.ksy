meta:
  id: sea_lamp_section_excel_config
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
  - id: section_id
    type: aux_types::vlq_base128_le_u
    if: has_field_section_id
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: main_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_main_quest_id
  - id: mini_quest_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_mini_quest_id
  - id: watcher_id_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_id_vec
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_section_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_activity_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_main_quest_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_mini_quest_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_watcher_id_vec: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_title: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_name: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
