meta:
  id: material_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../ArrayType/array_of__aux_types__string__length_u
    - ../EnumType/enum__food_quality_type
    - ../EnumType/enum__item_type
    - ../EnumType/enum__item_use_target
    - ../EnumType/enum__material_destroy_type
    - ../EnumType/enum__material_type
    - ../EnumType/enum__item_use_op
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: interaction_title
    type: aux_types::vlq_base128_le_u
    if: has_field_interaction_title
  - id: material_type
    type: enum__material_type
    if: has_field_material_type
  - id: cd_time
    type: aux_types::vlq_base128_le_u
    if: has_field_cd_time
  - id: cd_group
    type: aux_types::vlq_base128_le_u
    if: has_field_cd_group
  - id: stack_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_stack_limit
  - id: max_use_count
    type: aux_types::vlq_base128_le_u
    if: has_field_max_use_count
  - id: use_on_gain
    type: u1
    if: has_field_use_on_gain
  - id: no_first_get_hint
    type: u1
    if: has_field_no_first_get_hint
  - id: play_gain_effect
    type: u1
    if: has_field_play_gain_effect
  - id: use_target
    type: enum__item_use_target
    if: has_field_use_target
  - id: item_use
    type: array_of__item_use_config__length_s
    if: has_field_item_use
  - id: rank_level
    type: aux_types::vlq_base128_le_u
    if: has_field_rank_level
  - id: food_quality
    type: enum__food_quality_type
    if: has_field_food_quality
  - id: effect_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_effect_desc
  - id: special_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_special_desc
  - id: type_desc
    type: aux_types::vlq_base128_le_u
    if: has_field_type_desc
  - id: effect_icon
    type: aux_types::string
    if: has_field_effect_icon
  - id: effect_gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_effect_gadget_id
  - id: effect_name
    type: aux_types::string
    if: has_field_effect_name
  - id: pic_path
    type: array_of__aux_types__string__length_u
    if: has_field_pic_path
  - id: is_split_drop
    type: u1
    if: has_field_is_split_drop
  - id: close_bag_after_used
    type: u1
    if: has_field_close_bag_after_used
  - id: satiation_params
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_satiation_params
  - id: destroy_rule
    type: enum__material_destroy_type
    if: has_field_destroy_rule
  - id: destroy_return_material
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_destroy_return_material
  - id: destroy_return_material_count
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_destroy_return_material_count
  - id: set_id
    type: aux_types::vlq_base128_le_u
    if: has_field_set_id
  - id: is_hidden
    type: u1
    if: has_field_is_hidden
  - id: is_force_get_hint
    type: u1
    if: has_field_is_force_get_hint
  - id: id
    type: aux_types::vlq_base128_le_u
    if: has_field_id
  - id: name
    type: aux_types::vlq_base128_le_u
    if: has_field_name
  - id: desc
    type: aux_types::vlq_base128_le_u
    if: has_field_desc
  - id: icon
    type: aux_types::string
    if: has_field_icon
  - id: item_type
    type: enum__item_type
    if: has_field_item_type
  - id: weight
    type: aux_types::vlq_base128_le_u
    if: has_field_weight
  - id: rank
    type: aux_types::vlq_base128_le_u
    if: has_field_rank
  - id: gadget_id
    type: aux_types::vlq_base128_le_u
    if: has_field_gadget_id
  - id: dropable
    type: u1
    if: has_field_dropable
  - id: use_level
    type: aux_types::vlq_base128_le_u
    if: has_field_use_level
  - id: global_item_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_global_item_limit
instances:
  has_field_interaction_title: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_material_type: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_cd_time: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_cd_group: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_stack_limit: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_max_use_count: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_use_on_gain: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_no_first_get_hint: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_play_gain_effect: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_use_target: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_item_use: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_rank_level: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_food_quality: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_effect_desc: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_special_desc: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_type_desc: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_effect_icon: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_effect_gadget_id: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_effect_name: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_pic_path: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_is_split_drop: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_close_bag_after_used: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_satiation_params: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_destroy_rule: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_destroy_return_material: # Field №24
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000001) != 0)
  has_field_destroy_return_material_count: # Field №25
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000010) != 0)
  has_field_set_id: # Field №26
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000100) != 0)
  has_field_is_hidden: # Field №27
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00001000) != 0)
  has_field_is_force_get_hint: # Field №28
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00010000) != 0)
  has_field_id: # Field №29
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00100000) != 0)
  has_field_name: # Field №30
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b01000000) != 0)
  has_field_desc: # Field №31
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b10000000) != 0)
  has_field_icon: # Field №32
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00000001) != 0)
  has_field_item_type: # Field №33
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00000010) != 0)
  has_field_weight: # Field №34
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00000100) != 0)
  has_field_rank: # Field №35
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00001000) != 0)
  has_field_gadget_id: # Field №36
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00010000) != 0)
  has_field_dropable: # Field №37
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00100000) != 0)
  has_field_use_level: # Field №38
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b01000000) != 0)
  has_field_global_item_limit: # Field №39
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b10000000) != 0)
types:
  array_of__item_use_config__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: item_use_config
        repeat: expr
        repeat-expr: length.value
  item_use_config:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: use_op
        type: enum__item_use_op
        if: has_field_use_op
      - id: use_param
        type: array_of__aux_types__string__length_u
        if: has_field_use_param
    instances:
      has_field_use_op: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_use_param: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
