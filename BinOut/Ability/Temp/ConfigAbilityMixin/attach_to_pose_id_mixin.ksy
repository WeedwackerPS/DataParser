meta:
  id: attach_to_pose_id_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../../ArrayType/array_of__aux_types__vlq_base128_le_s__length_u
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: pose_i_ds
    type: array_of__aux_types__vlq_base128_le_s__length_u
    if: has_field_pose_i_ds
  - id: modifier_name
    type: aux_types::string
    if: has_field_modifier_name
instances:
  has_field_pose_i_ds: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_modifier_name: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
