meta:
  id: offering_level_up_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - Common/id_count_config
    - ../EnumType/enum__offering_action_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: offering_id
    type: aux_types::vlq_base128_le_u
    if: has_field_offering_id
  - id: level
    type: aux_types::vlq_base128_le_u
    if: has_field_level
  - id: is_max_level
    type: u1
    if: has_field_is_max_level
  - id: consume_item_config
    type: id_count_config
    if: has_field_consume_item_config
  - id: reward_id
    type: aux_types::vlq_base128_le_u
    if: has_field_reward_id
  - id: action_vec
    type: array_of__offering_action_content__length_s
    if: has_field_action_vec
  - id: cut_scene_id
    type: aux_types::vlq_base128_le_u
    if: has_field_cut_scene_id
instances:
  has_field_offering_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_is_max_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_consume_item_config: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_reward_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_action_vec: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_cut_scene_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
types:
  array_of__offering_action_content__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: offering_action_content
        repeat: expr
        repeat-expr: length.value
  offering_action_content:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: action_type
        type: enum__offering_action_type
        if: has_field_action_type
      - id: param
        type: aux_types::string
        if: has_field_param
    instances:
      has_field_action_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
