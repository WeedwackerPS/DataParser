types:
  score_rule:
    seq:
      - id: bit_field
        type: u1
      - id: rule_name
        type: aux_types::string
        if: has_field_rule_name
      - id: trigger_mode
        type: enum__trigger_mode
        if: has_field_trigger_mode
      - id: property_names
        type: array_of__aux_types__string__length_u
        if: has_field_property_names
      - id: min_select_count
        type: aux_types::vlq_base128_le_s
        if: has_field_min_select_count
      - id: max_select_count
        type: aux_types::vlq_base128_le_s
        if: has_field_max_select_count
      - id: add_to_score_view
        type: u1
        if: has_field_add_to_score_view
    instances:
      has_field_rule_name: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_trigger_mode: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_property_names: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_min_select_count: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_max_select_count: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_add_to_score_view: # Field №5
        value: (bit_field & 0b100000) != 0
