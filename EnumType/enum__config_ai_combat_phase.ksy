meta:
  id: enum__config_ai_combat_phase
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: config_ai_combat_phase
enums:
  config_ai_combat_phase:
    0: default
    1: p1
    2: p2
    3: p3
    4: p4
    5: p5
