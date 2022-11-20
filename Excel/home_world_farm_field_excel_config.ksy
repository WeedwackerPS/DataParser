meta:
  id: home_world_farm_field_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__home_world_field_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: field_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_field_item_id
  - id: field_type
    type: enum__home_world_field_type
    if: has_field_field_type
  - id: field_gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_field_gadget_id
  - id: field_slot_num
    type: aux_types::vlq_base128_le_u
    if: has_field_field_slot_num
  - id: field_slot_gadget_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_field_slot_gadget_id
instances:
  has_field_field_item_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_field_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_field_gadget_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_field_slot_num: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_field_slot_gadget_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
