types:
  bored_monster_pool_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
      - id: monster_id
        type: aux_types::vlq_base128_le_u
        if: has_field_monster_id
      - id: level
        type: aux_types::vlq_base128_le_u
        if: has_field_level
      - id: drop_tag
        type: aux_types::string
        if: has_field_drop_tag
      - id: affix_vec
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_affix_vec
      - id: is_elite
        type: u1
        if: has_field_is_elite
    instances:
      has_field_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_monster_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_level: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_drop_tag: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_affix_vec: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_is_elite: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
