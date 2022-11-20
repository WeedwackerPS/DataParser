meta:
  id: scene_prop_sync_mixin
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
  - id: tile_name
    type: aux_types::string
    if: has_field_tile_name
  - id: is_world_type
    type: u1
    if: has_field_is_world_type
instances:
  has_field_tile_name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_is_world_type: # Field №1
    value: (bit_field & 0b10) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
