meta:
  id: activity_delivery_daily_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: daily_config_id
    type: aux_types::vlq_base128_le_u
    if: has_field_daily_config_id
  - id: delivery_quest_config
    type: array_of__delivery_quest_config__length_s
    if: has_field_delivery_quest_config
  - id: task_desc
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_task_desc
  - id: daily_reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_daily_reward_id
instances:
  has_field_daily_config_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_delivery_quest_config: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_task_desc: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_daily_reward_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
types:
  array_of__delivery_quest_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: delivery_quest_config
        repeat: expr
        repeat-expr: length.value
  delivery_quest_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: parent_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_parent_quest_id
      - id: delivery_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_delivery_quest_id
      - id: start_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_start_quest_id
      - id: talk_quest_id
        type: aux_types::vlq_base128_le_u
        if: has_field_talk_quest_id
      - id: watcher_id
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_watcher_id
      - id: item_id
        type: aux_types::vlq_base128_le_u
        if: has_field_item_id
    instances:
      has_field_parent_quest_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_delivery_quest_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_start_quest_id: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_talk_quest_id: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_watcher_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_item_id: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
