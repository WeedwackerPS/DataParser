meta:
  id: disp__config_effect_attach_shape
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../EnumType/enum__particle_shape_type
seq:
  - id: type_code
    type: aux_types::vlq_base128_le_u
  - id: data
    type:
      switch-on: type_code.value
      cases:
        0: config_effect_attach_shape
        1: config_effect_attach_box
        2: config_effect_attach_skinned_mesh
        3: config_effect_attach_mesh
        _: aux_types::error
types:
  config_effect_attach_box:
    seq:
      - id: base
        type: config_effect_attach_shape
      - id: bit_field
        type: u1
      - id: emit_from
        type: enum__particle_shape_type
        if: has_field_emit_from
      - id: scale_x
        type: f4
        if: has_field_scale_x
      - id: scale_y
        type: f4
        if: has_field_scale_y
      - id: scale_z
        type: f4
        if: has_field_scale_z
    instances:
      has_field_emit_from: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_scale_x: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_scale_y: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_scale_z: # Field №3
        value: (bit_field & 0b1000) != 0
  config_effect_attach_mesh:
    seq:
      - id: base
        type: config_effect_attach_shape
      - id: bit_field
        type: u1
      - id: mesh
        type: aux_types::string
        if: has_field_mesh
    instances:
      has_field_mesh: # Field №0
        value: (bit_field & 0b1) != 0
  config_effect_attach_shape:
    seq: []
  config_effect_attach_skinned_mesh:
    seq:
      - id: base
        type: config_effect_attach_shape
      - id: bit_field
        type: u1
      - id: mesh
        type: aux_types::string
        if: has_field_mesh
    instances:
      has_field_mesh: # Field №0
        value: (bit_field & 0b1) != 0