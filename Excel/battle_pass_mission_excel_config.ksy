meta:
  id: battle_pass_mission_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__battle_pass_mission_refresh_type
    - Common/watcher_trigger_config
    - Common/quest_guide
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: refresh_type
    type: enum__battle_pass_mission_refresh_type
    if: has_field_refresh_type
  - id: is_force
    type: u1
    if: has_field_is_force
  - id: add_point
    type: aux_types::vlq_base128_le_u
    if: has_field_add_point
  - id: schedule_id
    type: aux_types::vlq_base128_le_u
    if: has_field_schedule_id
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: guide
    type: quest_guide
    if: has_field_guide
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: trigger_config
    type: watcher_trigger_config
    if: has_field_trigger_config
  - id: progress
    type: aux_types::vlq_base128_le_u
    if: has_field_progress
  - id: is_disuse
    type: u1
    if: has_field_is_disuse
instances:
  has_field_refresh_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_is_force: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_add_point: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_schedule_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_activity_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_desc: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_guide: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_trigger_config: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_progress: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_is_disuse: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
