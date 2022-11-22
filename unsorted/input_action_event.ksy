types:
  input_action_event:
    seq:
      - id: bit_field
        type: u1
      - id: priority
        type: aux_types::vlq_base128_le_s
        if: has_field_priority
      - id: event_type
        type: enum__input_event_type
        if: has_field_event_type
      - id: next_to_handle
        type: enum__context_event_type
        if: has_field_next_to_handle
      - id: event_config
        type: config_base_input_event
        if: has_field_event_config
      - id: proxy_event_type
        type: enum__input_event_type
        if: has_field_proxy_event_type
      - id: context_event
        type: enum__context_event_type
        if: has_field_context_event
    instances:
      has_field_priority: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_event_type: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_next_to_handle: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_event_config: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_proxy_event_type: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_context_event: # Field №5
        value: (bit_field & 0b100000) != 0
