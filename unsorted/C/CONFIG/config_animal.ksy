types:
  config_animal:
    seq:
      - id: bit_field
        type: u1
      - id: has_ability
        type: u1
        if: has_field_has_ability
      - id: tick_ability_element
        type: u1
        if: has_field_tick_ability_element
      - id: simple_combat
        type: u1
        if: has_field_simple_combat
      - id: has_character_renderering
        type: u1
        if: has_field_has_character_renderering
    instances:
      has_field_has_ability: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_tick_ability_element: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_simple_combat: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_has_character_renderering: # Field №3
        value: (bit_field & 0b1000) != 0
