meta:
  id: hunting_region_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: center_pos_list
    type: array_of__f4__length_u
    if: has_field_center_pos_list
  - id: center_radius
    type: aux_types::vlq_base128_le_u
    if: has_field_center_radius
  - id: safe_clue_group
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_safe_clue_group
  - id: clue_group
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_clue_group
  - id: safe_destination_group
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_safe_destination_group
  - id: destination_group
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_destination_group
  - id: region_info
    type: aux_types::vlq_base128_le_u
    if: has_field_region_info
  - id: certain_final_monster_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_certain_final_monster_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_center_pos_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_center_radius: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_safe_clue_group: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_clue_group: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_safe_destination_group: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_destination_group: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_region_info: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_certain_final_monster_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
