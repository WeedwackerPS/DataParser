types:
  config_guide_switch_input_context_action:
    seq:
      - id: base
        type: config_guide_action
      - id: bit_field
        type: u1
      - id: input_event_list
        type: array_of__aux_types__string__length_u
        if: has_field_input_event_list
      - id: context_event_list
        type: array_of__aux_types__string__length_u
        if: has_field_context_event_list
      - id: input_priority_list
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_input_priority_list
    instances:
      has_field_input_event_list: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_context_event_list: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_input_priority_list: # Field №2
        value: (bit_field & 0b100) != 0
