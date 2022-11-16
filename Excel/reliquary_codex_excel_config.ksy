meta:
  id: reliquary_codex_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: suit_id
    type: aux_types::vlq_base128_le_u
    if: has_field_suit_id
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: cup_id
    type: aux_types::vlq_base128_le_u
    if: has_field_cup_id
  - id: leather_id
    type: aux_types::vlq_base128_le_u
    if: has_field_leather_id
  - id: cap_id
    type: aux_types::vlq_base128_le_u
    if: has_field_cap_id
  - id: flower_id
    type: aux_types::vlq_base128_le_u
    if: has_field_flower_id
  - id: sand_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sand_id
  - id: sort_order
    type: aux_types::vlq_base128_le_u
    if: has_field_sort_order
  - id: is_disuse
    type: u1
    if: has_field_is_disuse
  - id: show_only_unlocked
    type: u1
    if: has_field_show_only_unlocked
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_suit_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_cup_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_leather_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_cap_id: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_flower_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_sand_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_sort_order: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_is_disuse: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_show_only_unlocked: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
