meta:
  id: reliquary_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__equip_type
    - ../EnumType/enum__item_type
    - ../EnumType/enum__material_destroy_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: equip_type
    type: enum__equip_type
    if: has_field_equip_type
  - id: show_pic
    type: aux_types::string
    if: has_field_show_pic
  - id: rank_level
    type: aux_types::vlq_base128_le_u
    if: has_field_rank_level
  - id: main_prop_depot_id
    type: aux_types::vlq_base128_le_u
    if: has_field_main_prop_depot_id
  - id: append_prop_depot_id
    type: aux_types::vlq_base128_le_u
    if: has_field_append_prop_depot_id
  - id: append_prop_num
    type: aux_types::vlq_base128_le_u
    if: has_field_append_prop_num
  - id: set_id
    type: aux_types::vlq_base128_le_u
    if: has_field_set_id
  - id: add_prop_levels
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_add_prop_levels
  - id: base_conv_exp
    type: aux_types::vlq_base128_le_u
    if: has_field_base_conv_exp
  - id: max_level
    type: aux_types::vlq_base128_le_u
    if: has_field_max_level
  - id: story_id
    type: aux_types::vlq_base128_le_u
    if: has_field_story_id
  - id: destroy_rule
    type: enum__material_destroy_type
    if: has_field_destroy_rule
  - id: destroy_return_material
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_destroy_return_material
  - id: destroy_return_material_count
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_destroy_return_material_count
  - id: initial_lock_state
    type: aux_types::vlq_base128_le_u
    if: has_field_initial_lock_state
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
  has_field_equip_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_show_pic: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_rank_level: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_main_prop_depot_id: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_append_prop_depot_id: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_append_prop_num: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_set_id: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_add_prop_levels: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_base_conv_exp: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_max_level: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_story_id: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_destroy_rule: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_destroy_return_material: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_destroy_return_material_count: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_initial_lock_state: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_id: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_name: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_desc: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_icon: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_item_type: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_weight: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_rank: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_gadget_id: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_dropable: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_use_level: # Field №24
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000001) != 0)
  has_field_global_item_limit: # Field №25
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000010) != 0)
