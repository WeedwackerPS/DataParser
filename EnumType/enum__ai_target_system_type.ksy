meta:
  id: enum__ai_target_system_type
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
    enum: ai_target_system_type
enums:
  ai_target_system_type:
    0: threat
    1: master
    2: servant
    3: owner
    4: children
    5: buddy
