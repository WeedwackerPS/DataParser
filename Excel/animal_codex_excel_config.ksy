meta:
  id: animal_codex_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__animal_codex_count_type
    - ../EnumType/enum__animal_codex_sub_type
    - ../EnumType/enum__animal_codex_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: type
    type: enum__animal_codex_type
    if: has_field_type
  - id: describe_id
    type: aux_types::vlq_base128_le_u
    if: has_field_describe_id
  - id: is_seen_active
    type: u1
    if: has_field_is_seen_active
  - id: sort_order
    type: aux_types::vlq_base128_le_u
    if: has_field_sort_order
  - id: is_disuse
    type: u1
    if: has_field_is_disuse
  - id: show_only_unlocked
    type: u1
    if: has_field_show_only_unlocked
  - id: sub_type
    type: enum__animal_codex_sub_type
    if: has_field_sub_type
  - id: count_type
    type: enum__animal_codex_count_type
    if: has_field_count_type
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: model_path
    type: aux_types::string
    if: has_field_model_path
  - id: push_tips_codex_id
    type: aux_types::vlq_base128_le_u
    if: has_field_push_tips_codex_id
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_describe_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_is_seen_active: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_sort_order: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_is_disuse: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_show_only_unlocked: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_sub_type: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_count_type: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_desc: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_model_path: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_push_tips_codex_id: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
