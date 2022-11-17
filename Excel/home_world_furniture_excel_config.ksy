meta:
  id: home_world_furniture_excel_config
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__furniture_deploy_surface_type
    - ../EnumType/enum__item_type
    - ../EnumType/enum__speical_furniture_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: furniture_id
    type: aux_types::vlq_base128_le_u
    if: has_field_furniture_id
  - id: furniture_name
    type: aux_types::vlq_base128_le_u
    if: has_field_furniture_name
  - id: furniture_gadget_id
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_furniture_gadget_id
  - id: furn_type
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_furn_type
  - id: surface_type
    type: enum__furniture_deploy_surface_type
    if: has_field_surface_type
  - id: arrange_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_arrange_limit
  - id: is_special_furniture
    type: aux_types::vlq_base128_le_u
    if: has_field_is_special_furniture
  - id: special_furniture_type
    type: enum__speical_furniture_type
    if: has_field_special_furniture_type
  - id: room_scene_id
    type: aux_types::vlq_base128_le_u
    if: has_field_room_scene_id
  - id: grid_style
    type: aux_types::vlq_base128_le_u
    if: has_field_grid_style
  - id: comfort
    type: aux_types::vlq_base128_le_u
    if: has_field_comfort
  - id: stack_limit
    type: aux_types::vlq_base128_le_u
    if: has_field_stack_limit
  - id: cost
    type: aux_types::vlq_base128_le_u
    if: has_field_cost
  - id: discount_cost
    type: aux_types::vlq_base128_le_u
    if: has_field_discount_cost
  - id: height
    type: f4
    if: has_field_height
  - id: can_float
    type: aux_types::vlq_base128_le_u
    if: has_field_can_float
  - id: is_unique
    type: aux_types::vlq_base128_le_u
    if: has_field_is_unique
  - id: item_icon
    type: aux_types::string
    if: has_field_item_icon
  - id: effect_icon
    type: aux_types::string
    if: has_field_effect_icon
  - id: clamp_distance
    type: f4
    if: has_field_clamp_distance
  - id: editor_clamp_distance
    type: f4
    if: has_field_editor_clamp_distance
  - id: deploy_glitch_index
    type: aux_types::vlq_base128_le_u
    if: has_field_deploy_glitch_index
  - id: rank_level
    type: aux_types::vlq_base128_le_u
    if: has_field_rank_level
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
  has_field_furniture_id: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_furniture_name: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_furniture_gadget_id: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_furn_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_surface_type: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_arrange_limit: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_is_special_furniture: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_special_furniture_type: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_room_scene_id: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_grid_style: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_comfort: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_stack_limit: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_cost: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_discount_cost: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_height: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_can_float: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_is_unique: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_item_icon: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_effect_icon: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_clamp_distance: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_editor_clamp_distance: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_deploy_glitch_index: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_rank_level: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_id: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_name: # Field №24
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000001) != 0)
  has_field_desc: # Field №25
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000010) != 0)
  has_field_icon: # Field №26
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00000100) != 0)
  has_field_item_type: # Field №27
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00001000) != 0)
  has_field_weight: # Field №28
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00010000) != 0)
  has_field_rank: # Field №29
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b00100000) != 0)
  has_field_gadget_id: # Field №30
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b01000000) != 0)
  has_field_dropable: # Field №31
    value: (bit_field.length.value >= (0b00000011 + 1)) and ((bit_field.bitfield[0b00000011] & 0b10000000) != 0)
  has_field_use_level: # Field №32
    value: (bit_field.length.value >= (0b00000100 + 1)) and ((bit_field.bitfield[0b00000100] & 0b00000001) != 0)
  has_field_global_item_limit: # Field №33
    value: (bit_field.length.value >= (0b00000100 + 1)) and ((bit_field.bitfield[0b00000100] & 0b00000010) != 0)
