meta:
  id: enum__use_skill_type
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
    enum: use_skill_type
enums:
  use_skill_type:
    0: none
    1: normal_attack
    2: skill
    3: ultimate_skill
    4: count
