types:
  investigation_dungeon_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: entrance_id
        type: aux_types::vlq_base128_le_u
        if: has_field_entrance_id
      - id: city_id
        type: aux_types::vlq_base128_le_u
        if: has_field_city_id
      - id: dungeon_id_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_dungeon_id_list
    instances:
      has_field_entrance_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_city_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_dungeon_id_list: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
