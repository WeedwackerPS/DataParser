types:
  config_level_layout:
    seq:
      - id: bit_field
        type: u1
      - id: blocks
        type: array_of__config_level_block__length_u
        if: has_field_blocks
    instances:
      has_field_blocks: # Field №0
        value: (bit_field & 0b1) != 0
