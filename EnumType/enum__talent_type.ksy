meta:
  id: enum__talent_type
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
    enum: talent_type
enums:
  talent_type:
    0: none
    1: core_proud_skill
    2: inherent_proud_skill
    3: avatar_skill
