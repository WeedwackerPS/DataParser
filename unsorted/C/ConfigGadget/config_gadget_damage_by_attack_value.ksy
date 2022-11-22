types:
  config_gadget_damage_by_attack_value:
    seq:
      - id: base
        type: config_base_gadget_trigger_action
      - id: bit_field
        type: u1
      - id: born
        type: disp__config_born_type
        if: has_field_born
      - id: attack_info
        type: config_attack_info
        if: has_field_attack_info
    instances:
      has_field_born: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_attack_info: # Field №1
        value: (bit_field & 0b10) != 0
