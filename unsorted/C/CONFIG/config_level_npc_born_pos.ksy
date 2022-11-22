types:
  config_level_npc_born_pos:
    seq:
      - id: bit_field
        type: u1
      - id: scene_id
        type: aux_types::vlq_base128_le_u
        if: has_field_scene_id
      - id: born_pos_list
        type: array_of__config_npc_born_pos__length_u
        if: has_field_born_pos_list
    instances:
      has_field_scene_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_born_pos_list: # Field №1
        value: (bit_field & 0b10) != 0
