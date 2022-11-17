meta:
  id: rogue_dungeon_cell_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__rogue_cell_type
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_id
  - id: cell_id
    type: aux_types::vlq_base128_le_u
    if: has_field_cell_id
  - id: cell_center_pos
    type: array_of__f4__length_u
    if: has_field_cell_center_pos
  - id: map_coordinate
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_map_coordinate
  - id: adjacency_cell_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_adjacency_cell_list
  - id: group_id
    type: aux_types::vlq_base128_le_u
    if: has_field_group_id
  - id: weight_id
    type: aux_types::vlq_base128_le_u
    if: has_field_weight_id
  - id: operator_delta_y
    type: f4
    if: has_field_operator_delta_y
  - id: door_offset
    type: f4
    if: has_field_door_offset
  - id: special_type
    type: enum__rogue_cell_type
    if: has_field_special_type
  - id: door_delta_y
    type: f4
    if: has_field_door_delta_y
  - id: is_init_cell
    type: u1
    if: has_field_is_init_cell
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_dungeon_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_cell_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_cell_center_pos: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_map_coordinate: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_adjacency_cell_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_group_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_weight_id: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_operator_delta_y: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_door_offset: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_special_type: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_door_delta_y: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_is_init_cell: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
