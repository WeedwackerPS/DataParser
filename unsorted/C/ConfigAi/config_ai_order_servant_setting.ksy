types:
  config_ai_order_servant_setting:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b1) != 0
