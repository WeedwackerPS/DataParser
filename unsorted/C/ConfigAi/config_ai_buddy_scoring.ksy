types:
  config_ai_buddy_scoring:
    seq:
      - id: bit_field
        type: u1
      - id: hp_factor
        type: aux_types::vlq_base128_le_s
        if: has_field_hp_factor
      - id: hp_weight
        type: f4
        if: has_field_hp_weight
      - id: dist_factor
        type: f4
        if: has_field_dist_factor
      - id: dist_weight
        type: aux_types::vlq_base128_le_s
        if: has_field_dist_weight
      - id: role_scores
        type: array_of__f4__length_u
        if: has_field_role_scores
    instances:
      has_field_hp_factor: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_hp_weight: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_dist_factor: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_dist_weight: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_role_scores: # Field №4
        value: (bit_field & 0b10000) != 0
