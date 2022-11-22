types:
  config_guide_show_panel_action:
    seq:
      - id: base
        type: config_guide_action
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b1) != 0
