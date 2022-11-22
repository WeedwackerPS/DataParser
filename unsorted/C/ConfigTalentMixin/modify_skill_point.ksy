types:
  modify_skill_point:
    seq:
      - id: base
        type: config_talent_mixin
      - id: bit_field
        type: u1
      - id: skill_id
        type: aux_types::vlq_base128_le_u
        if: has_field_skill_id
      - id: point_delta
        type: aux_types::vlq_base128_le_s
        if: has_field_point_delta
    instances:
      has_field_skill_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_point_delta: # Field №1
        value: (bit_field & 0b10) != 0
