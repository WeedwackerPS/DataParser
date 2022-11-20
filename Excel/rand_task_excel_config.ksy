meta:
  id: rand_task_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__rand_task_content_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: content_type
    type: enum__rand_task_content_type
    if: has_field_content_type
  - id: reward
    type: aux_types::vlq_base128_le_u
    if: has_field_reward
  - id: need_ui
    type: u1
    if: has_field_need_ui
  - id: target
    type: aux_types::vlq_base128_le_u
    if: has_field_target
  - id: enter_distance
    type: aux_types::vlq_base128_le_u
    if: has_field_enter_distance
  - id: exit_distance
    type: aux_types::vlq_base128_le_u
    if: has_field_exit_distance
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_title: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_content_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_reward: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_need_ui: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_target: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_enter_distance: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_exit_distance: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
