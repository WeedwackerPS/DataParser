meta:
  id: mp_play_text_data_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: mp_play_id
    type: aux_types::vlq_base128_le_u
    if: has_field_mp_play_id
  - id: quest
    type: aux_types::vlq_base128_le_u
    if: has_field_quest
  - id: reward
    type: aux_types::vlq_base128_le_u
    if: has_field_reward
  - id: invite
    type: aux_types::vlq_base128_le_u
    if: has_field_invite
  - id: invitedesc
    type: aux_types::vlq_base128_le_u
    if: has_field_invitedesc
  - id: invitedeschost
    type: aux_types::vlq_base128_le_u
    if: has_field_invitedeschost
  - id: start
    type: aux_types::vlq_base128_le_u
    if: has_field_start
  - id: starttip
    type: aux_types::vlq_base128_le_u
    if: has_field_starttip
  - id: victory
    type: aux_types::vlq_base128_le_u
    if: has_field_victory
  - id: fail
    type: aux_types::vlq_base128_le_u
    if: has_field_fail
  - id: rivive
    type: aux_types::vlq_base128_le_u
    if: has_field_rivive
  - id: timespend
    type: aux_types::vlq_base128_le_u
    if: has_field_timespend
  - id: up_avatar_text
    type: aux_types::vlq_base128_le_u
    if: has_field_up_avatar_text
instances:
  has_field_mp_play_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_quest: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_reward: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_invite: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_invitedesc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_invitedeschost: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_start: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_starttip: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_victory: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_fail: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_rivive: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_timespend: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_up_avatar_text: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
