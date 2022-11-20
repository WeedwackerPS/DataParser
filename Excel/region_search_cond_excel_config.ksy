meta:
  id: region_search_cond_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__region_search_cond_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: search_name
    type: aux_types::vlq_base128_le_u
    if: has_field_search_name
  - id: search_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_search_desc
  - id: search_map_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_search_map_desc
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: logic_type
    type: enum__logic_type
    if: has_field_logic_type
  - id: cond
    type: array_of__region_search_cond__length_s
    if: has_field_cond
  - id: region_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_region_list
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: total_progress
    type: aux_types::vlq_base128_le_u
    if: has_field_total_progress
  - id: reminder_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reminder_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_search_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_search_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_search_map_desc: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_group_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_logic_type: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_cond: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_region_list: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_reward_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_total_progress: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_reminder_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
types:
  array_of__region_search_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: region_search_cond
        repeat: expr
        repeat-expr: length.value
  region_search_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__region_search_cond_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
