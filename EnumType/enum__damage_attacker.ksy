meta:
  id: enum__damage_attacker
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
    enum: damage_attacker
enums:
  damage_attacker:
    0: caster
    1: self
