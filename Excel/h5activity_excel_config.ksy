meta:
  id: h5activity_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__logic_type
    - Common/array_of__h5activity_cond_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: h5activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_h5activity_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: detail
    type: aux_types::vlq_base128_le_u
    if: has_field_detail
  - id: reward_preview
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview
  - id: cond_comb
    type: enum__logic_type
    if: has_field_cond_comb
  - id: cond_list
    type: array_of__h5activity_cond_config__length_s
    if: has_field_cond_list
instances:
  has_field_h5activity_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_detail: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_reward_preview: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_cond_comb: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_cond_list: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  