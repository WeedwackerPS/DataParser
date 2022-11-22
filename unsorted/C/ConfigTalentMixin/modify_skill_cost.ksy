types:
  modify_skill_cost:
    seq:
      - id: base
        type: config_talent_mixin
      - id: bit_field
        type: u1
      - id: skill_id
        type: aux_types::vlq_base128_le_u
        if: has_field_skill_id
      - id: cost_delta
        type: f4
        if: has_field_cost_delta
      - id: cost_ratio
        type: f4
        if: has_field_cost_ratio
    instances:
      has_field_skill_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_cost_delta: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_cost_ratio: # Field №2
        value: (bit_field & 0b100) != 0
