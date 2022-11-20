meta:
  id: home_world_shop_sub_tag_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: sub_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sub_id
  - id: show_new_mark
    type: u1
    if: has_field_show_new_mark
  - id: sub_tag
    type: aux_types::vlq_base128_le_u
    if: has_field_sub_tag
instances:
  has_field_sub_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_show_new_mark: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_sub_tag: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
