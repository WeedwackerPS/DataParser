meta:
  id: tile_complex_mixin
  endian: le
  license: GPL
  imports:
    - ../config_ability_mixin
    - ../../../../aux_types
    - ../../../Common/vector
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: attack_id
    type: aux_types::string
    if: has_field_attack_id
  - id: attach_point_name
    type: aux_types::string
    if: has_field_attach_point_name
  - id: offset
    type: vector
    if: has_field_offset
  - id: shape
    type: disp__tile_shape_info
    if: has_field_shape
instances:
  has_field_attack_id: # Field №0
    value: (bit_field & 0b0001) != 0
  has_field_attach_point_name: # Field №1
    value: (bit_field & 0b0010) != 0
  has_field_offset: # Field №2
    value: (bit_field & 0b0100) != 0
  has_field_shape: # Field №3
    value: (bit_field & 0b1000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
types:
  disp__tile_shape_info:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: tile_shape_info
            1: sphere_tile_shape_info
            _: aux_types::error
  tile_shape_info:
    seq: []
  sphere_tile_shape_info:
    seq:
      - id: base
        type: tile_shape_info
      - id: bit_field
        type: u1
      - id: radius
        type: f4
        if: has_field_radius
    instances:
      has_field_radius: # Field №0
        value: (bit_field & 0b1) != 0
