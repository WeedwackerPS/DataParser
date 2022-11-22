types:
  config_chest:
    seq:
      - id: bit_field
        type: u1
      - id: born_locked_by_ability
        type: u1
        if: has_field_born_locked_by_ability
      - id: open_effect
        type: aux_types::string
        if: has_field_open_effect
      - id: trigger_open_chest_vo
        type: u1
        if: has_field_trigger_open_chest_vo
    instances:
      has_field_born_locked_by_ability: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_open_effect: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_trigger_open_chest_vo: # Field №2
        value: (bit_field & 0b100) != 0
