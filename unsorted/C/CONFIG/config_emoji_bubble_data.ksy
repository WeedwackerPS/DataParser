types:
  config_emoji_bubble_data:
    seq:
      - id: bit_field
        type: u1
      - id: name
        type: aux_types::string
        if: has_field_name
      - id: effects
        type: array_of__aux_types__string__length_u
        if: has_field_effects
    instances:
      has_field_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_effects: # Field №1
        value: (bit_field & 0b10) != 0
