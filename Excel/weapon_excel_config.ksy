meta:
  id: weapon_excel_config
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
    - ../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../EnumType/enum__element_type
    - ../EnumType/enum__item_type
    - ../EnumType/enum__material_destroy_type
    - ../EnumType/enum__weapon_material_type
    - ../EnumType/enum__weapon_type
    - ../EnumType/enum__fight_prop_type
    - ../EnumType/enum__grow_curve_type
seq:
  - id: bit_field
    type: aux_types::length_prefixed_bitfield
  - id: weapon_type
    type: enum__weapon_type
    if: has_field_weapon_type
  - id: rank_level
    type: aux_types::vlq_base128_le_u
    if: has_field_rank_level
  - id: material_type
    type: enum__weapon_material_type
    if: has_field_material_type
  - id: elem_type
    type: enum__element_type
    if: has_field_elem_type
  - id: is_gold
    type: u1
    if: has_field_is_gold
  - id: weapon_base_exp
    type: aux_types::vlq_base128_le_u
    if: has_field_weapon_base_exp
  - id: skill_affix
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_skill_affix
  - id: awaken_material
    type: aux_types::vlq_base128_le_u
    if: has_field_awaken_material
  - id: weapon_prop
    type: array_of__weapon_property__length_s
    if: has_field_weapon_prop
  - id: awaken_texture
    type: aux_types::string
    if: has_field_awaken_texture
  - id: awaken_light_map_texture
    type: aux_types::string
    if: has_field_awaken_light_map_texture
  - id: awaken_icon
    type: aux_types::string
    if: has_field_awaken_icon
  - id: un_rotate
    type: u1
    if: has_field_un_rotate
  - id: weapon_promote_id
    type: aux_types::vlq_base128_le_u
    if: has_field_weapon_promote_id
  - id: story_id
    type: aux_types::vlq_base128_le_u
    if: has_field_story_id
  - id: awaken_costs
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_awaken_costs
  - id: gacha_card_name_hash_suffix
    type: aux_types::vlq_base128_le_u
    if: has_field_gacha_card_name_hash
  - id: gacha_card_name_hash_pre
    type: s1
    if: has_field_gacha_card_name_hash
  - id: enhance_rule
    type: aux_types::vlq_base128_le_u
    if: has_field_enhance_rule
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
  has_field_weapon_type: # Field №0
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
  has_field_rank_level: # Field №1
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
  has_field_material_type: # Field №2
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
  has_field_elem_type: # Field №3
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00001000) != 0)
  has_field_is_gold: # Field №4
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00010000) != 0)
  has_field_weapon_base_exp: # Field №5
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00100000) != 0)
  has_field_skill_affix: # Field №6
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b01000000) != 0)
  has_field_awaken_material: # Field №7
    value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b10000000) != 0)
  has_field_weapon_prop: # Field №8
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000001) != 0)
  has_field_awaken_texture: # Field №9
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000010) != 0)
  has_field_awaken_light_map_texture: # Field №10
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00000100) != 0)
  has_field_awaken_icon: # Field №11
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00001000) != 0)
  has_field_un_rotate: # Field №12
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00010000) != 0)
  has_field_weapon_promote_id: # Field №13
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b00100000) != 0)
  has_field_story_id: # Field №14
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b01000000) != 0)
  has_field_awaken_costs: # Field №15
    value: (bit_field.length.value >= 2) and ((bit_field.bitfield[1] & 0b10000000) != 0)
  has_field_gacha_card_name_hash: # Field №16
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000001) != 0)
  has_field_enhance_rule: # Field №17
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000010) != 0)
  has_field_destroy_rule: # Field №18
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00000100) != 0)
  has_field_destroy_return_material: # Field №19
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00001000) != 0)
  has_field_destroy_return_material_count: # Field №20
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00010000) != 0)
  has_field_initial_lock_state: # Field №21
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b00100000) != 0)
  has_field_id: # Field №22
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b01000000) != 0)
  has_field_name: # Field №23
    value: (bit_field.length.value >= 3) and ((bit_field.bitfield[2] & 0b10000000) != 0)
  has_field_desc: # Field №24
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000001) != 0)
  has_field_icon: # Field №25
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000010) != 0)
  has_field_item_type: # Field №26
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00000100) != 0)
  has_field_weight: # Field №27
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00001000) != 0)
  has_field_rank: # Field №28
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00010000) != 0)
  has_field_gadget_id: # Field №29
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b00100000) != 0)
  has_field_dropable: # Field №30
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b01000000) != 0)
  has_field_use_level: # Field №31
    value: (bit_field.length.value >= 4) and ((bit_field.bitfield[3] & 0b10000000) != 0)
  has_field_global_item_limit: # Field №32
    value: (bit_field.length.value >= 5) and ((bit_field.bitfield[4] & 0b00000001) != 0)
types:
  array_of__weapon_property__length_s:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_s
      - id: data
        type: weapon_property
        repeat: expr
        repeat-expr: length.value
  weapon_property:
    seq:
      - id: bit_field
        type: aux_types::length_prefixed_bitfield
      - id: prop_type
        type: enum__fight_prop_type
        if: has_field_prop_type
      - id: init_value
        type: f4
        if: has_field_init_value
      - id: type
        type: enum__grow_curve_type
        if: has_field_type
    instances:
      has_field_prop_type: # Field №0
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000001) != 0)
      has_field_init_value: # Field №1
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000010) != 0)
      has_field_type: # Field №2
        value: (bit_field.length.value >= 1) and ((bit_field.bitfield[0] & 0b00000100) != 0)
