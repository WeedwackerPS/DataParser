types:
  config_ai_order_setting:
    seq:
      - id: bit_field
        type: u1
      - id: master
        type: config_ai_order_master_setting
        if: has_field_master
      - id: servant
        type: config_ai_order_servant_setting
        if: has_field_servant
      - id: command_setting
        type: config_ai_command_setting
        if: has_field_command_setting
    instances:
      has_field_master: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_servant: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_command_setting: # Field №2
        value: (bit_field & 0b100) != 0
