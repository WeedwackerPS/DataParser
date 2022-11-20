meta:
  id: battle_pass_reward_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: index_id
    type: aux_types::vlq_base128_le_u
    if: has_field_index_id
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: free_reward_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_free_reward_id_list
  - id: paid_reward_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_paid_reward_id_list
  - id: show_up
    type: u1
    if: has_field_show_up
instances:
  has_field_index_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_free_reward_id_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_paid_reward_id_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_show_up: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
