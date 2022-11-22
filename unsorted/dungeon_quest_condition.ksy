types:
  dungeon_quest_condition:
    seq:
      - id: bit_field
        type: u1
      - id: dungeon_id
        type: aux_types::vlq_base128_le_u
        if: has_field_dungeon_id
      - id: main_quest_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_main_quest_id_list
    instances:
      has_field_dungeon_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_main_quest_id_list: # Field №1
        value: (bit_field & 0b10) != 0
