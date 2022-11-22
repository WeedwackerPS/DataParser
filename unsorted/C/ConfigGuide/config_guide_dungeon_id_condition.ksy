types:
  config_guide_dungeon_id_condition:
    seq:
      - id: base
        type: config_guide_condition
      - id: bit_field
        type: u1
      - id: dungeon_id
        type: aux_types::vlq_base128_le_u
        if: has_field_dungeon_id
      - id: dungeon_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_dungeon_id_list
      - id: is_dungeon
        type: u1
        if: has_field_is_dungeon
    instances:
      has_field_dungeon_id: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_dungeon_id_list: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_is_dungeon: # Field №2
        value: (bit_field & 0b100) != 0
