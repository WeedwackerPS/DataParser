types:
  config_guide_mechanicus_curse_card_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: has_curse
        type: u1
        if: has_field_has_curse
    instances:
      has_field_has_curse: # Field №0
        value: (bit_field & 0b1) != 0
