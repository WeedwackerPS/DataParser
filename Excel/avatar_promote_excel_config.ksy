meta:
  id: avatar_promote_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - Common/array_of__id_count_config__length_s
    - Common/array_of__prop_val_config__length_s
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: avatar_promote_id
    type: aux_types::vlq_base128_le_u
    if: has_field_avatar_promote_id
  - id: promote_level
    type: aux_types::vlq_base128_le_u
    if: has_field_promote_level
  - id: promote_audio
    type: aux_types::string
    if: has_field_promote_audio
  - id: scoin_cost
    type: aux_types::vlq_base128_le_u
    if: has_field_scoin_cost
  - id: cost_items
    type: array_of__id_count_config__length_s
    if: has_field_cost_items
  - id: unlock_max_level
    type: aux_types::vlq_base128_le_u
    if: has_field_unlock_max_level
  - id: add_props
    type: array_of__prop_val_config__length_s
    if: has_field_add_props
  - id: required_player_level
    type: aux_types::vlq_base128_le_u
    if: has_field_required_player_level
instances:
  has_field_avatar_promote_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_promote_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_promote_audio: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_scoin_cost: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_cost_items: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_unlock_max_level: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_add_props: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_required_player_level: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
