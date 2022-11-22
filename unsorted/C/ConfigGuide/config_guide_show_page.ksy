types:
  config_guide_show_page:
    seq:
      - id: base
        type: config_guide_action
      - id: bit_field
        type: u1
      - id: context_name
        type: aux_types::string
        if: has_field_context_name
      - id: enable
        type: u1
        if: has_field_enable
    instances:
      has_field_context_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_enable: # Field №1
        value: (bit_field & 0b10) != 0
