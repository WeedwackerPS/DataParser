types:
  config_ai_order_master_setting:
    seq:
      - id: bit_field
        type: u1
      - id: enable
        type: u1
        if: has_field_enable
      - id: servant_slot_amount
        type: aux_types::vlq_base128_le_s
        if: has_field_servant_slot_amount
    instances:
      has_field_enable: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_servant_slot_amount: # Field №1
        value: (bit_field & 0b10) != 0
