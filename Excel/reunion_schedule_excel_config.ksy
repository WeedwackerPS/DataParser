meta:
  id: reunion_schedule_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: activate_level
    type: aux_types::vlq_base128_le_u
    if: has_field_activate_level
  - id: first_gift_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_first_gift_reward_id
  - id: daily_sign_in_id
    type: aux_types::vlq_base128_le_u
    if: has_field_daily_sign_in_id
  - id: reunion_mission_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reunion_mission_id
  - id: reunion_privilege_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reunion_privilege_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_activate_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_first_gift_reward_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_daily_sign_in_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_reunion_mission_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_reunion_privilege_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
