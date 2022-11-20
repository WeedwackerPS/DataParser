meta:
  id: activity_chess_card_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../EnumType/enum__chess_card_numerical_modification_mode
    - ../EnumType/enum__chess_card_numerical_modification_type
    - ../EnumType/enum__chess_card_quality_type
    - ../EnumType/enum__chess_card_effect_type
    - ../EnumType/enum__chess_card_target_type
    - ../EnumType/enum__chess_card_tag
    - ../EnumType/enum__chess_card_type
    - ../ArrayType/array_of__array_of__f4__length_u__length_u
    - ../ArrayType/array_of__u1__length_u
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: number
    type: aux_types::vlq_base128_le_u
    if: has_field_number
  - id: tag
    type: enum__chess_card_tag
    if: has_field_tag
  - id: need_chess_level
    type: aux_types::vlq_base128_le_u
    if: has_field_need_chess_level
  - id: card_name
    type: aux_types::vlq_base128_le_u
    if: has_field_card_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: extra_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_extra_desc
  - id: extra_desc2
    type: aux_types::vlq_base128_le_u
    if: has_field_extra_desc2
  - id: desc_param_list
    type: array_of__array_of__f4__length_u__length_u
    if: has_field_desc_param_list
  - id: desc_param_superposition_list
    type: array_of__u1__length_u
    if: has_field_desc_param_superposition_list
  - id: is_disused
    type: u1
    if: has_field_is_disused
  - id: card_numerical_modification_type
    type: enum__chess_card_numerical_modification_type
    if: has_field_card_numerical_modification_type
  - id: card_numerical_modification_mode
    type: enum__chess_card_numerical_modification_mode
    if: has_field_card_numerical_modification_mode
  - id: card_numerical_modification_value
    type: f4
    if: has_field_card_numerical_modification_value
  - id: cost_points
    type: aux_types::vlq_base128_le_u
    if: has_field_cost_points
  - id: card_type
    type: enum__chess_card_type
    if: has_field_card_type
  - id: card_quality_type
    type: enum__chess_card_quality_type
    if: has_field_card_quality_type
  - id: card_count
    type: aux_types::vlq_base128_le_u
    if: has_field_card_count
  - id: effect
    type: chess_card_effect
    if: has_field_effect
  - id: curse_weight
    type: aux_types::vlq_base128_le_u
    if: has_field_curse_weight
  - id: is_can_attach_curse
    type: u1
    if: has_field_is_can_attach_curse
  - id: is_remove_on_pick
    type: u1
    if: has_field_is_remove_on_pick
  - id: is_show_on_pick
    type: u1
    if: has_field_is_show_on_pick
  - id: extra_effect_list
    type: array_of__chess_card_effect__length_s
    if: has_field_extra_effect_list
instances:
  has_field_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_number: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_tag: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_need_chess_level: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_card_name: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_desc: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_extra_desc: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_extra_desc2: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_desc_param_list: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_desc_param_superposition_list: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_is_disused: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_card_numerical_modification_type: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_card_numerical_modification_mode: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_card_numerical_modification_value: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_cost_points: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_card_type: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_card_quality_type: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_card_count: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_effect: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_curse_weight: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_is_can_attach_curse: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_is_remove_on_pick: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_is_show_on_pick: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_extra_effect_list: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
types:
  array_of__chess_card_effect__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: chess_card_effect
        repeat: expr
        repeat-expr: length.value
  chess_card_effect:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: target_type
        type: enum__chess_card_target_type
        if: has_field_target_type
      - id: target_param_list
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_target_param_list
      - id: effect_type
        type: enum__chess_card_effect_type
        if: has_field_effect_type
      - id: effect_str_param
        type: aux_types::string
        if: has_field_effect_str_param
      - id: effect_param1
        type: aux_types::vlq_base128_le_s
        if: has_field_effect_param1
      - id: effect_param2
        type: aux_types::vlq_base128_le_s
        if: has_field_effect_param2
      - id: effect_param3
        type: aux_types::vlq_base128_le_s
        if: has_field_effect_param3
      - id: begin_round
        type: aux_types::vlq_base128_le_u
        if: has_field_begin_round
      - id: active_rounds
        type: aux_types::vlq_base128_le_u
        if: has_field_active_rounds
      - id: effect_index
        type: aux_types::vlq_base128_le_u
        if: has_field_effect_index
    instances:
      has_field_target_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_target_param_list: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_effect_type: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_effect_str_param: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
      has_field_effect_param1: # Field №4
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
      has_field_effect_param2: # Field №5
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
      has_field_effect_param3: # Field №6
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
      has_field_begin_round: # Field №7
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
      has_field_active_rounds: # Field №8
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
      has_field_effect_index: # Field №9
        value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
