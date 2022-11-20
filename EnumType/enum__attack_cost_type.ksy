meta:
  id: enum__attack_cost_type
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
    enum: attack_cost_type
enums:
  attack_cost_type:
    0: max
    1: min
    2: sum
