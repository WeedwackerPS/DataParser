types:
  config_guide_foundation_build_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: num
        type: aux_types::vlq_base128_le_s
        if: has_field_num
      - id: opt
        type: enum__guide_operator
        if: has_field_opt
      - id: is_build
        type: u1
        if: has_field_is_build
    instances:
      has_field_num: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_opt: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_is_build: # Field №2
        value: (bit_field & 0b100) != 0
