meta:
  id: server_create_gadget_on_kill_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../../../../aux_types
    - ../../../../EnumType/enum__target_type
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: gadget_id_list
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_gadget_id_list
  - id: camp_id
    type: aux_types::vlq_base128_le_u
    if: has_field_camp_id
  - id: camp_target_type
    type: enum__target_type
    if: has_field_camp_target_type
  - id: random_create
    type: u1
    if: has_field_random_create
  - id: use_origin_owner_as_gadget_owner
    type: u1
    if: has_field_use_origin_owner_as_gadget_owner
  - id: life_by_owner_is_alive
    type: u1
    if: has_field_life_by_owner_is_alive
instances:
  has_field_gadget_id_list: # Field №0
    value: (bit_field & 0b000001) != 0
  has_field_camp_id: # Field №1
    value: (bit_field & 0b000010) != 0
  has_field_camp_target_type: # Field №2
    value: (bit_field & 0b000100) != 0
  has_field_random_create: # Field №3
    value: (bit_field & 0b001000) != 0
  has_field_use_origin_owner_as_gadget_owner: # Field №4
    value: (bit_field & 0b010000) != 0
  has_field_life_by_owner_is_alive: # Field №5
    value: (bit_field & 0b100000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
