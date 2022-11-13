meta:
  id: enum__config_ai_combat_skill_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__config_ai_combat_skill_type:
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