meta:
  id: extend_lifetime_by_picked_gadget_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../Arraytype/array_of__aux_types__vlq_base128_le_u__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: picked_config_i_ds
    type: array_of__aux_types__vlq_base128_le_u__length_u
    if: has_field_picked_config_i_ds
  - id: extend_life_time
    type: aux_types::dynamic_float
    if: has_field_extend_life_time
  - id: max_extend_life_time
    type: aux_types::dynamic_float
    if: has_field_max_extend_life_time
instances:
  has_field_picked_config_i_ds: # Field №0
    value: (bit_field & 0b001) != 0
  has_field_extend_life_time: # Field №1
    value: (bit_field & 0b010) != 0
  has_field_max_extend_life_time: # Field №2
    value: (bit_field & 0b100) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
