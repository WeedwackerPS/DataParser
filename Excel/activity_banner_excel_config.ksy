meta:
  id: activity_banner_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__activity_banner_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: activity_id
    type: aux_types::vlq_base128_le_u
    if: has_field_activity_id
  - id: banner_type
    type: enum__activity_banner_type
    if: has_field_banner_type
  - id: reward_preview_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_preview_id
  - id: json_config_name
    type: aux_types::string
    if: has_field_json_config_name
  - id: prefab_path
    type: aux_types::string
    if: has_field_prefab_path
instances:
  has_field_activity_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_banner_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_reward_preview_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_json_config_name: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_prefab_path: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
