types:
  config_auto_dool:
    seq:
      - id: bit_field
        type: u1
      - id: check_interval
        type: f4
        if: has_field_check_interval
      - id: trigger_distance
        type: f4
        if: has_field_trigger_distance
    instances:
      has_field_check_interval: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_trigger_distance: # Field №1
        value: (bit_field & 0b10) != 0
