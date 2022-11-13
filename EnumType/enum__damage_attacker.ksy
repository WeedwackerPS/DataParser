meta:
  id: enum__damage_attacker
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__damage_attacker:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: damage_attacker
enums:
  damage_attacker:
    0: caster
    1: self
