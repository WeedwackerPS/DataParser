meta:
  id: enum__use_skill_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__use_skill_type:
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
