types:
  config_cannon:
    seq:
      - id: bit_field
        type: u1
      - id: close_operation_page_after_fire
        type: u1
        if: has_field_close_operation_page_after_fire
      - id: close_page_delay
        type: f4
        if: has_field_close_page_delay
      - id: reminder_vanish_delay
        type: f4
        if: has_field_reminder_vanish_delay
      - id: fire_interval
        type: f4
        if: has_field_fire_interval
      - id: turning_btn_press_block_time
        type: f4
        if: has_field_turning_btn_press_block_time
    instances:
      has_field_close_operation_page_after_fire: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_close_page_delay: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_reminder_vanish_delay: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_fire_interval: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_turning_btn_press_block_time: # Field №4
        value: (bit_field & 0b10000) != 0
