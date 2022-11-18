meta:
  id: gadget_interact_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__interact_action_type
    - ../EnumType/enum__interact_cond_type
    - Common/array_of__id_count_config__length_s
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: interact_id
    type: aux_types::vlq_base128_le_u
    if: has_field_interact_id
  - id: consume_item_id
    type: aux_types::vlq_base128_le_u
    if: has_field_consume_item_id
  - id: consume_item_num
    type: aux_types::vlq_base128_le_u
    if: has_field_consume_item_num
  - id: action_type
    type: enum__interact_action_type
    if: has_field_action_type
  - id: param1
    type: aux_types::vlq_base128_le_u
    if: has_field_param1
  - id: param2
    type: aux_types::vlq_base128_le_u
    if: has_field_param2
  - id: action_list
    type: array_of__gadget_interact_action_config__length_s
    if: has_field_action_list
  - id: is_guest_interact
    type: u1
    if: has_field_is_guest_interact
  - id: cost_items
    type: array_of__id_count_config__length_s
    if: has_field_cost_items
  - id: ui_title
    type: aux_types::vlq_base128_le_u
    if: has_field_ui_title
  - id: ui_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_ui_desc
  - id: cond_list
    type: array_of__gadget_interact_cond__length_s
    if: has_field_cond_list
  - id: cond_comb
    type: enum__logic_type
    if: has_field_cond_comb
instances:
  has_field_interact_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_consume_item_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_consume_item_num: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_action_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_param1: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_param2: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_action_list: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_is_guest_interact: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_cost_items: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_ui_title: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_ui_desc: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_cond_list: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_cond_comb: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
types:
  array_of__gadget_interact_action_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: gadget_interact_action_config
        repeat: expr
        repeat-expr: length.value
  array_of__gadget_interact_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: gadget_interact_cond
        repeat: expr
        repeat-expr: length.value
  gadget_interact_action_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: action_type
        type: enum__interact_action_type
        if: has_field_action_type
      - id: param
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_param
    instances:
      has_field_action_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  gadget_interact_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: cond_type
        type: enum__interact_cond_type
        if: has_field_cond_type
      - id: param
        type: array_of__aux_types__string__length_u
        if: has_field_param
    instances:
      has_field_cond_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
