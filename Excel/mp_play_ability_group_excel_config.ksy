meta:
  id: mp_play_ability_group_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: index
    type: aux_types::vlq_base128_le_u
    if: has_field_index
  - id: avatar_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_id
instances:
  has_field_index: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_avatar_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
