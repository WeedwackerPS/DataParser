meta:
  id: enum__config_ai_skill_type
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: config_ai_skill_type
enums:
  config_ai_skill_type:
    0: free
    1: combat
    2: on_aware
    3: on_alert
    4: on_nerve
    5: action_point
    6: combat_buddy
