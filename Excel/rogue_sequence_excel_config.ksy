meta:
  id: rogue_sequence_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../DictType/dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
    - ../EnumType/enum__rogue_cell_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_id
  - id: sequence_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sequence_id
  - id: cell_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_cell_list
  - id: cell_priority
    type: dict_of__aux_types__vlq_base128_le_u_aux_types__vlq_base128_le_u
    if: has_field_cell_priority
  - id: cell_seq_list
    type: array_of__rogue_sequence_cell_config__length_s
    if: has_field_cell_seq_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_dungeon_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_sequence_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_cell_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_cell_priority: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_cell_seq_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
types:
  array_of__rogue_sequence_cell_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: rogue_sequence_cell_config
        repeat: expr
        repeat-expr: length.value
  rogue_sequence_cell_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__rogue_cell_type
        if: has_field_type
      - id: range
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_range
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_range: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
