meta:
  id: enum__follow_attach_occupy_priority
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: follow_attach_occupy_priority
enums:
  follow_attach_occupy_priority:
    10: follow_pet
    50: theme_play
    80: quest_event
    90: activity_event
    100: quest_blank
