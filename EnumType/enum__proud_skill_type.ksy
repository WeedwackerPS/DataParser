meta:
  id: enum__proud_skill_type
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
    enum: proud_skill_type
enums:
  proud_skill_type:
    0: proud_skill_none
    1: proud_skill_core
    2: proud_skill_inherent
    3: proud_skill_active
