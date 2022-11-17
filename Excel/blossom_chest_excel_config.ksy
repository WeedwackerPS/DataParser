meta:
  id: blossom_chest_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__blossom_chest_show_type
    - ../EnumType/enum__blossom_refresh_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: chest_gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_chest_gadget_id
  - id: world_resin
    type: aux_types::vlq_base128_le_u
    if: has_field_world_resin
  - id: resin
    type: aux_types::vlq_base128_le_u
    if: has_field_resin
  - id: refresh_type
    type: enum__blossom_refresh_type
    if: has_field_refresh_type
  - id: client_show_type
    type: enum__blossom_chest_show_type
    if: has_field_client_show_type
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_chest_gadget_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_world_resin: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_resin: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_refresh_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_client_show_type: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
