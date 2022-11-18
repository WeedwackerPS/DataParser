meta:
  id: material_source_data_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__source_jump_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: dungeon_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_dungeon_list
  - id: jump_list
    type: array_of__source_jump_config__length_s
    if: has_field_jump_list
  - id: text_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_text_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_dungeon_list: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_jump_list: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_text_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
types:
  array_of__source_jump_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: source_jump_config
        repeat: expr
        repeat-expr: length.value
  source_jump_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: jump_type
        type: enum__source_jump_type
        if: has_field_jump_type
      - id: jump_param
        type: aux_types::vlq_base128_le_u
        if: has_field_jump_param
    instances:
      has_field_jump_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_jump_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
