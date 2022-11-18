meta:
  id: dungeon_pass_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__dungeon_cond_type
    - ../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: logic_type
    type: enum__logic_type
    if: has_field_logic_type
  - id: conds
    type: array_of__dungeon_cond_config__length_s
    if: has_field_conds
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_logic_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_conds: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
types:
  array_of__dungeon_cond_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: dungeon_cond_config
        repeat: expr
        repeat-expr: length.value
  dungeon_cond_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: cond_type
        type: enum__dungeon_cond_type
        if: has_field_cond_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_s__length_u
        if: has_field_param
    instances:
      has_field_cond_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)