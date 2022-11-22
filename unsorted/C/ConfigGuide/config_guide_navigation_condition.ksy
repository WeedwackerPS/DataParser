types:
  config_guide_navigation_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: navigation_id
        type: aux_types::vlq_base128_le_u
        if: has_field_navigation_id
      - id: navigation_type
        type: enum__guide_navigation_type
        if: has_field_navigation_type
      - id: check_type
        type: enum__guide_navigation_check_type
        if: has_field_check_type
      - id: only_check_change
        type: u1
        if: has_field_only_check_change
    instances:
      has_field_navigation_id: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_navigation_type: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_check_type: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_only_check_change: # Field №3
        value: (bit_field & 0b1000) != 0
