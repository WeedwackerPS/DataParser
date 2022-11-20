meta:
  id: luna_rite_searching_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__luna_rite_region_type
    - ../ArrayType/array_of__f4__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: region_type
    type: enum__luna_rite_region_type
    if: has_field_region_type
  - id: open_day
    type: aux_types::vlq_base128_le_u
    if: has_field_open_day
  - id: progress_watcher_id
    type: aux_types::vlq_base128_le_u
    if: has_field_progress_watcher_id
  - id: watcher_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_watcher_id
  - id: region_center
    type: array_of__f4__length_u
    if: has_field_region_center
  - id: region_name_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_region_name_hash
  - id: region_name_hash_pre
    type: s1
    if: has_field_region_name_hash
  - id: region_radius
    type: f4
    if: has_field_region_radius
  - id: chest_cond
    type: aux_types::vlq_base128_le_u
    if: has_field_chest_cond
  - id: rune_cond
    type: aux_types::vlq_base128_le_u
    if: has_field_rune_cond
  - id: chest_mark_num
    type: aux_types::vlq_base128_le_u
    if: has_field_chest_mark_num
  - id: rune_mark_num
    type: aux_types::vlq_base128_le_u
    if: has_field_rune_mark_num
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_region_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_open_day: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_progress_watcher_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_watcher_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_region_center: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_region_name_hash: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_region_radius: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_chest_cond: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_rune_cond: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_chest_mark_num: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_rune_mark_num: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
