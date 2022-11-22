meta:
  id: config_entity
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../../ArrayType/array_of__aux_types__string__length_u
    - config_entity_common
    - disp__config_head_control
    - config_entity_point
    - config_custom_attack_shape
    - config_dither
    - config_global_value
seq:
  - id: bit_field
    type: u1
  - id: common
    type: config_entity_common
    if: has_field_common
  - id: head_control
    type: disp__config_head_control
    if: has_field_head_control
  - id: special_point
    type: config_entity_point
    if: has_field_special_point
  - id: custom_attack_shape
    type: config_custom_attack_shape
    if: has_field_custom_attack_shape
  - id: model
    type: config_model
    if: has_field_model
  - id: dither
    type: config_dither
    if: has_field_dither
  - id: global_value
    type: config_global_value
    if: has_field_global_value
  - id: entity_tags
    type: config_entity_tags
    if: has_field_entity_tags
instances:
  has_field_common: # Field №0
    value: (bit_field & 0b00000001) != 0
  has_field_head_control: # Field №1
    value: (bit_field & 0b00000010) != 0
  has_field_special_point: # Field №2
    value: (bit_field & 0b00000100) != 0
  has_field_custom_attack_shape: # Field №3
    value: (bit_field & 0b00001000) != 0
  has_field_model: # Field №4
    value: (bit_field & 0b00010000) != 0
  has_field_dither: # Field №5
    value: (bit_field & 0b00100000) != 0
  has_field_global_value: # Field №6
    value: (bit_field & 0b01000000) != 0
  has_field_entity_tags: # Field №7
    value: (bit_field & 0b10000000) != 0
types:
  config_model:
    seq:
      - id: bit_field
        type: u1
      - id: mat_linear_changed_by_distance
        type: array_of__config_mat_linear_changed_by_distance__length_u
        if: has_field_mat_linear_changed_by_distance
      - id: born_effect
        type: aux_types::string
        if: has_field_born_effect
      - id: attach_effect
        type: aux_types::string
        if: has_field_attach_effect
      - id: can_bake_mesh
        type: u1
        if: has_field_can_bake_mesh
      - id: set_per_object_shadow_group_id
        type: u1
        if: has_field_set_per_object_shadow_group_id
      - id: has_character_renderering
        type: u1
        if: has_field_has_character_renderering
    instances:
      has_field_mat_linear_changed_by_distance: # Field №0
        value: (bit_field & 0b000001) != 0
      has_field_born_effect: # Field №1
        value: (bit_field & 0b000010) != 0
      has_field_attach_effect: # Field №2
        value: (bit_field & 0b000100) != 0
      has_field_can_bake_mesh: # Field №3
        value: (bit_field & 0b001000) != 0
      has_field_set_per_object_shadow_group_id: # Field №4
        value: (bit_field & 0b010000) != 0
      has_field_has_character_renderering: # Field №5
        value: (bit_field & 0b100000) != 0
  config_entity_tags:
    seq:
      - id: bit_field
        type: u1
      - id: init_tags
        type: array_of__aux_types__string__length_u
        if: has_field_init_tags
    instances:
      has_field_init_tags: # Field №0
        value: (bit_field & 0b1) != 0
  array_of__config_mat_linear_changed_by_distance__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_mat_linear_changed_by_distance
        repeat: expr
        repeat-expr: length.value
  config_mat_linear_changed_by_distance:
    seq:
      - id: bit_field
        type: u1
      - id: transform_name
        type: aux_types::string
        if: has_field_transform_name
      - id: texture_property
        type: array_of__aux_types__string__length_u
        if: has_field_texture_property
      - id: float_property
        type: array_of__aux_types__string__length_u
        if: has_field_float_property
      - id: min_ratio
        type: f4
        if: has_field_min_ratio
      - id: max_ratio
        type: f4
        if: has_field_max_ratio
      - id: min_distance
        type: f4
        if: has_field_min_distance
      - id: max_distance
        type: f4
        if: has_field_max_distance
    instances:
      has_field_transform_name: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_texture_property: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_float_property: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_min_ratio: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_max_ratio: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_min_distance: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_max_distance: # Field №6
        value: (bit_field & 0b1000000) != 0
