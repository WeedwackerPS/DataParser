meta:
  id: enum__config_ai_combat_skill_type
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
    enum: config_ai_combat_skill_type
enums:
  config_ai_combat_skill_type:
    0: unclassified
    1: melee_attack
    2: ranged_attack
