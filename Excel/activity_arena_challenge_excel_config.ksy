meta:
  id: activity_arena_challenge_excel_config
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
  - id: schedule_id
    type: aux_types::vlq_base128_le_u
    if: has_field_schedule_id
  - id: arena_challenge_id
    type: aux_types::vlq_base128_le_u
    if: has_field_arena_challenge_id
  - id: arena_challenge_level
    type: aux_types::vlq_base128_le_u
    if: has_field_arena_challenge_level
  - id: is_extra_level
    type: u1
    if: has_field_is_extra_level
  - id: watcher_id
    type: aux_types::vlq_base128_le_u
    if: has_field_watcher_id
  - id: challenge_target
    type: aux_types::vlq_base128_le_u
    if: has_field_challenge_target
  - id: challenge_target1
    type: aux_types::vlq_base128_le_u
    if: has_field_challenge_target1
  - id: challenge_target2
    type: aux_types::vlq_base128_le_u
    if: has_field_challenge_target2
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_schedule_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_arena_challenge_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_arena_challenge_level: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_is_extra_level: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_watcher_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_challenge_target: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_challenge_target1: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_challenge_target2: # Field №8
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00000001) != 0)
