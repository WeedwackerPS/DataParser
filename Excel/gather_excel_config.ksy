meta:
  id: gather_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__gather_save_type
    - ../EnumType/enum__point_location
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: area_id
    type: aux_types::vlq_base128_le_u
    if: has_field_area_id
  - id: point_type
    type: aux_types::vlq_base128_le_u
    if: has_field_point_type
  - id: gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_id
  - id: item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_item_id
  - id: extra_item_id_vec
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_extra_item_id_vec
  - id: point_location
    type: enum__point_location
    if: has_field_point_location
  - id: cd
    type: aux_types::vlq_base128_le_u
    if: has_field_cd
  - id: priority
    type: aux_types::vlq_base128_le_u
    if: has_field_priority
  - id: refresh_id
    type: aux_types::vlq_base128_le_u
    if: has_field_refresh_id
  - id: block_limits
    type: array_of__block_limit__length_s
    if: has_field_block_limits
  - id: init_disable_interact
    type: u1
    if: has_field_init_disable_interact
  - id: is_forbid_guest
    type: u1
    if: has_field_is_forbid_guest
  - id: save_type
    type: enum__gather_save_type
    if: has_field_save_type
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_area_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_point_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_gadget_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_item_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_extra_item_id_vec: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_point_location: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_cd: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_priority: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_refresh_id: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_block_limits: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_init_disable_interact: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_is_forbid_guest: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_save_type: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
types:
  array_of__block_limit__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: block_limit
        repeat: expr
        repeat-expr: length.value
  block_limit:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: block_id
        type: aux_types::vlq_base128_le_u
        if: has_field_block_id
      - id: count
        type: aux_types::vlq_base128_le_u
        if: has_field_count
    instances:
      has_field_block_id: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_count: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
