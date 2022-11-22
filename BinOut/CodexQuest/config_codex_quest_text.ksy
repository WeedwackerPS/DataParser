meta:
  id: config_codex_quest_text
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
seq:
  - id: bit_field
    type: u1
  - id: text_id
    type: aux_types::vlq_base128_le_u
    if: has_field_text_id
  - id: text_type
    type: enum__codex_quest_text_type
    if: has_field_text_type
instances:
  has_field_text_id: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_text_type: # Field №1
    value: (bit_field & 0b10) != 0
