meta:
  id: enum__switch_skill_priority
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
    enum: switch_skill_priority
enums:
  switch_skill_priority:
    0: base
    4: avatar_common
    5: avatar_special
    101: playmode
    102: quest
