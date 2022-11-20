meta:
  id: enum__monster_security_level
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
    enum: monster_security_level
enums:
  monster_security_level:
    0: normal
    1: elite
    2: boss
