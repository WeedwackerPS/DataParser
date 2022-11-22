types:
  config_tile_element:
    seq:
      - id: bit_field
        type: u1
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
      - id: element_durability
        type: f4
        if: has_field_element_durability
      - id: is_element_durability_mutable
        type: u1
        if: has_field_is_element_durability_mutable
    instances:
      has_field_element_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_element_durability: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_is_element_durability_mutable: # Field №2
        value: (bit_field & 0b100) != 0
