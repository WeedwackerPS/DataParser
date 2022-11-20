meta:
  id: bored_create_monster_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_player_level
  - id: monster_config_vec
    type: array_of__bored_monster_config__length_s
    if: has_field_monster_config_vec
instances:
  has_field_player_level: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_monster_config_vec: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
types:
  array_of__bored_monster_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: bored_monster_config
        repeat: expr
        repeat-expr: length.value
  bored_monster_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: weight
        type: aux_types::vlq_base128_le_u
        if: has_field_weight
      - id: id
        type: aux_types::vlq_base128_le_u
        if: has_field_id
    instances:
      has_field_weight: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_id: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)