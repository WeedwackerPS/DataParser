meta:
  id: enum__attack_type
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
    enum: attack_type
enums:
  attack_type:
    0: none
    1: melee
    2: range
    3: default
