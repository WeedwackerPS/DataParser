meta:
  id: strengthen_base_point_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__strengthen_dungeon_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: dungeon_id
    type: aux_types::vlq_base128_le_u
    if: has_field_dungeon_id
  - id: dungeon_type
    type: enum__strengthen_dungeon_type
    if: has_field_dungeon_type
instances:
  has_field_dungeon_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_dungeon_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
