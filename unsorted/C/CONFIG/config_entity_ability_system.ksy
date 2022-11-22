types:
  config_entity_ability_system:
    seq:
      - id: bit_field
        type: u1
      - id: on_being_hit
        type: array_of__config_ability_system__length_u
        if: has_field_on_being_hit
    instances:
      has_field_on_being_hit: # Field №0
        value: (bit_field & 0b1) != 0
