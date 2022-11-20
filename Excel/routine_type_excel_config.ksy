meta:
  id: routine_type_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__general_routine_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: routine_type
    type: enum__general_routine_type
    if: has_field_routine_type
  - id: refresh_num
    type: aux_types::vlq_base128_le_u
    if: has_field_refresh_num
  - id: reward_limit_num
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_limit_num
  - id: refresh_id
    type: aux_types::vlq_base128_le_u
    if: has_field_refresh_id
  - id: delay_unload_time
    type: aux_types::vlq_base128_le_u
    if: has_field_delay_unload_time
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: icon
    type: aux_types::string
    if: has_field_icon
instances:
  has_field_routine_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_refresh_num: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_reward_limit_num: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_refresh_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_delay_unload_time: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_name: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_icon: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
