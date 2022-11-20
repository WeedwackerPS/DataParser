meta:
  id: achievement_excel_config
  endian: le
  license: GPL
  imports:
    - ../aux_types
    - ../EnumType/enum__show_type
    - ../EnumType/enum__progress_show_type
    - Common/watcher_trigger_config
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: goal_id
    type: aux_types::vlq_base128_le_u
    if: has_field_goal_id
  - id: order_id
    type: aux_types::vlq_base128_le_u
    if: has_field_order_id
  - id: pre_stage_achievement_id
    type: aux_types::vlq_base128_le_u
    if: has_field_pre_stage_achievement_id
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: is_show
    type: enum__show_type
    if: has_field_is_show
  - id: ps4group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_ps4group_id
  - id: ps5group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_ps5group_id
  - id: ps5title
    type: aux_types::vlq_base128_le_u
    if: has_field_ps5title
  - id: ttype
    type: aux_types::string
    if: has_field_ttype
  - id: ps_trophy_id
    type: aux_types::string
    if: has_field_ps_trophy_id
  - id: ps4trophy_id
    type: aux_types::string
    if: has_field_ps4trophy_id
  - id: ps5trophy_id
    type: aux_types::string
    if: has_field_ps5trophy_id
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: finish_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_finish_reward_id
  - id: is_delete_watcher_after_finish
    type: u1
    if: has_field_is_delete_watcher_after_finish
  - id: progress_show_type
    type: enum__progress_show_type
    if: has_field_progress_show_type
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
  has_field_goal_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_order_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_pre_stage_achievement_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_title: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_desc: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_show: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_ps4group_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_ps5group_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_ps5title: # Field №8
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00000001) != 0)
  has_field_ttype: # Field №9
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00000010) != 0)
  has_field_ps_trophy_id: # Field №10
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00000100) != 0)
  has_field_ps4trophy_id: # Field №11
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00001000) != 0)
  has_field_ps5trophy_id: # Field №12
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00010000) != 0)
  has_field_icon: # Field №13
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b00100000) != 0)
  has_field_finish_reward_id: # Field №14
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b01000000) != 0)
  has_field_is_delete_watcher_after_finish: # Field №15
    value: (bit_field.length.value >= (0b00000001 + 1)) and ((bit_field.bitfield[0b00000001] & 0b10000000) != 0)
  has_field_progress_show_type: # Field №16
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b00000001) != 0)
  has_field_id: # Field №17
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b00000010) != 0)
  has_field_trigger_config: # Field №18
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b00000100) != 0)
  has_field_progress: # Field №19
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b00001000) != 0)
  has_field_is_disuse: # Field №20
    value: (bit_field.length.value >= (0b00000010 + 1)) and ((bit_field.bitfield[0b00000010] & 0b00010000) != 0)
