types:
  music_game_position_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: inter_npcid
        type: aux_types::vlq_base128_le_u
        if: has_field_inter_npcid
      - id: npc_position
        type: array_of__f4__length_u
        if: has_field_npc_position
      - id: npc_rotation
        type: f4
        if: has_field_npc_rotation
      - id: npc_id
        type: aux_types::vlq_base128_le_u
        if: has_field_npc_id
      - id: mark_id
        type: aux_types::vlq_base128_le_u
        if: has_field_mark_id
      - id: free_style_id
        type: aux_types::vlq_base128_le_u
        if: has_field_free_style_id
      - id: ban_config
        type: aux_types::string
        if: has_field_ban_config
    instances:
      has_field_inter_npcid: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_npc_position: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_npc_rotation: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_npc_id: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_mark_id: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_free_style_id: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_ban_config: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
