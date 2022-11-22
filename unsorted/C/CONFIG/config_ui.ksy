types:
  config_ui:
    seq:
      - id: bit_field
        type: u1
      - id: input_events
        type: dict_of__enum__input_event_type_config_base_input_event
        if: has_field_input_events
      - id: action_groups
        type: dict_of__aux_types__string_array_of__input_action_event__length_u
        if: has_field_action_groups
      - id: context
        type: dict_of__aux_types__string_config_base_context
        if: has_field_context
    instances:
      has_field_input_events: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_action_groups: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_context: # Field №2
        value: (bit_field & 0b100) != 0
