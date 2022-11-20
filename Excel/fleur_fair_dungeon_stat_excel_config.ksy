meta:
  id: fleur_fair_dungeon_stat_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__string__length_u
    - ../EnumType/enum__fleur_fair_dungeon_stat_method
    - ../EnumType/enum__fleur_fair_dungeon_stat_type
    - ../EnumType/enum__ordering_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: gallery_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gallery_id
  - id: stat_type
    type: enum__fleur_fair_dungeon_stat_type
    if: has_field_stat_type
  - id: stat_param_list
    type: array_of__aux_types__string__length_u
    if: has_field_stat_param_list
  - id: ordering_type
    type: enum__ordering_type
    if: has_field_ordering_type
  - id: stat_method
    type: enum__fleur_fair_dungeon_stat_method
    if: has_field_stat_method
  - id: priority
    type: aux_types::vlq_base128_le_u
    if: has_field_priority
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_gallery_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_stat_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_stat_param_list: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_ordering_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_stat_method: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_priority: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_title: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_desc: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
