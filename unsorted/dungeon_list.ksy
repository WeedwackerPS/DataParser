types:
  dungeon_list:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: dungeon_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_dungeon_list
    instances:
      has_field_dungeon_list: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
