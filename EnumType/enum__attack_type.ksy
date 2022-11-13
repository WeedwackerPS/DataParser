meta:
  id: enum__attack_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__attack_type:
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