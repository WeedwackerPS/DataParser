meta:
  id: coop_interaction_excel_config
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
  - id: npc_id
    type: aux_types::vlq_base128_le_u
    if: has_field_npc_id
  - id: main_quest_id
    type: aux_types::vlq_base128_le_u
    if: has_field_main_quest_id
  - id: priority
    type: aux_types::vlq_base128_le_u
    if: has_field_priority
  - id: is_auto
    type: u1
    if: has_field_is_auto
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_npc_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_main_quest_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_priority: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_auto: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
