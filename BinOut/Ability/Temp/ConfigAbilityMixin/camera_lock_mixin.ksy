meta:
  id: camera_lock_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: trans_name
    type: aux_types::string
    if: has_field_trans_name
  - id: cfg_path
    type: aux_types::string
    if: has_field_cfg_path
instances:
  has_field_trans_name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_cfg_path: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
