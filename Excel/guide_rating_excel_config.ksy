meta:
  id: guide_rating_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__guide_platform_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: channel_id
    type: aux_types::vlq_base128_le_u
    if: has_field_channel_id
  - id: sub_channel_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sub_channel_id
  - id: is_china_server
    type: u1
    if: has_field_is_china_server
  - id: platform
    type: enum__guide_platform_type
    if: has_field_platform
  - id: url
    type: aux_types::string
    if: has_field_url
instances:
  has_field_channel_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_sub_channel_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_is_china_server: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_platform: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_url: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
