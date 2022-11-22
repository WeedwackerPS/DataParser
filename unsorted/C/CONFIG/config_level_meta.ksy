types:
  config_level_meta:
    seq:
      - id: bit_field
        type: u1
      - id: scene_meta
        type: dict_of__aux_types__vlq_base128_le_u_array_of__config_level_block_meta__length_u
        if: has_field_scene_meta
    instances:
      has_field_scene_meta: # Field №0
        value: (bit_field & 0b1) != 0
