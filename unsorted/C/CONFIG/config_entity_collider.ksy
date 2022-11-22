types:
  config_entity_collider:
    seq:
      - id: bit_field
        type: u1
      - id: type
        type: enum__entity_collider_type
        if: has_field_type
    instances:
      has_field_type: # Field №0
        value: (bit_field & 0b1) != 0
