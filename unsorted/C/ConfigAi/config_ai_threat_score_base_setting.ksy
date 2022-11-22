types:
  config_ai_threat_score_base_setting:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
      - id: weight
        type: aux_types::vlq_base128_le_s
        if: has_field_weight
      - id: value
        type: f4
        if: has_field_value
      - id: min
        type: f4
        if: has_field_min
      - id: max
        type: f4
        if: has_field_max
      - id: compare_operation
        type: enum__ordering_type
        if: has_field_compare_operation
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_weight: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_value: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_min: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_max: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_compare_operation: # Field №5
        value: (bit_field & 0b100000) != 0
