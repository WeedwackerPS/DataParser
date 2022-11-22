types:
  config_guide_delay_do_action:
    seq:
      - id: base
        type: config_guide_action
      - id: bit_field
        type: u1
      - id: delay_time
        type: f4
        if: has_field_delay_time
      - id: actions
        type: array_of__disp__config_base_guide__length_u
        if: has_field_actions
    instances:
      has_field_delay_time: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_actions: # Field №1
        value: (bit_field & 0b10) != 0
