meta:
  id: random_quest_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__string__length_u
    - ../EnumType/enum__ban_group_type
    - ../EnumType/enum__logic_type
    - ../EnumType/enum__quest_show_type
    - ../EnumType/enum__show_quest_guide_type
    - ../EnumType/enum__quest_content_type
    - ../EnumType/enum__quest_cond_type
    - Common/array_of__id_count_config__length_s
    - Common/array_of__quest_exec__length_s
    - Common/quest_guide
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: sub_id
    type: aux_types::vlq_base128_le_u
    if: has_field_sub_id
  - id: main_id
    type: aux_types::vlq_base128_le_u
    if: has_field_main_id
  - id: order
    type: aux_types::vlq_base128_le_s
    if: has_field_order
  - id: sub_id_set
    type: aux_types::vlq_base128_le_u
    if: has_field_sub_id_set
  - id: title
    type: aux_types::vlq_base128_le_u
    if: has_field_title
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: show_type
    type: enum__quest_show_type
    if: has_field_show_type
  - id: accept_cond_comb
    type: enum__logic_type
    if: has_field_accept_cond_comb
  - id: accept_cond
    type: array_of__random_quest_cond__length_s
    if: has_field_accept_cond
  - id: finish_cond_comb
    type: enum__logic_type
    if: has_field_finish_cond_comb
  - id: finish_cond
    type: array_of__random_quest_content__length_s
    if: has_field_finish_cond
  - id: fail_cond_comb
    type: enum__logic_type
    if: has_field_fail_cond_comb
  - id: fail_cond
    type: array_of__random_quest_content__length_s
    if: has_field_fail_cond
  - id: guide
    type: quest_guide
    if: has_field_guide
  - id: show_guide
    type: enum__show_quest_guide_type
    if: has_field_show_guide
  - id: finish_parent
    type: u1
    if: has_field_finish_parent
  - id: fail_parent
    type: u1
    if: has_field_fail_parent
  - id: fail_parent_show
    type: enum__quest_show_type
    if: has_field_fail_parent_show
  - id: is_rewind
    type: u1
    if: has_field_is_rewind
  - id: award_items
    type: array_of__id_count_config__length_s
    if: has_field_award_items
  - id: begin_exec
    type: array_of__quest_exec__length_s
    if: has_field_begin_exec
  - id: finish_exec
    type: array_of__quest_exec__length_s
    if: has_field_finish_exec
  - id: fail_exec
    type: array_of__quest_exec__length_s
    if: has_field_fail_exec
  - id: exclusive_npc_priority
    type: aux_types::vlq_base128_le_u
    if: has_field_exclusive_npc_priority
  - id: ban_type
    type: enum__ban_group_type
    if: has_field_ban_type
instances:
  has_field_sub_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_main_id: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_order: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_sub_id_set: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_title: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_desc: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_show_type: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_accept_cond_comb: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_accept_cond: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_finish_cond_comb: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_finish_cond: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_fail_cond_comb: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_fail_cond: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_guide: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_show_guide: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_finish_parent: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_fail_parent: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_fail_parent_show: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_is_rewind: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_award_items: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_begin_exec: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_finish_exec: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_fail_exec: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_exclusive_npc_priority: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_ban_type: # Field №24
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000001) != 0)
types:
  array_of__random_quest_cond__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: random_quest_cond
        repeat: expr
        repeat-expr: length.value
  random_quest_cond:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__quest_cond_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__string__length_u
        if: has_field_param
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  array_of__random_quest_content__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: random_quest_content
        repeat: expr
        repeat-expr: length.value
  random_quest_content:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: type
        type: enum__quest_content_type
        if: has_field_type
      - id: param
        type: array_of__aux_types__string__length_u
        if: has_field_param
      - id: param_str
        type: aux_types::string
        if: has_field_param_str
      - id: count
        type: aux_types::string
        if: has_field_count
    instances:
      has_field_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_param_str: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
      has_field_count: # Field №3
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
