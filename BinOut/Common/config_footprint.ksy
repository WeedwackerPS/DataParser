meta:
  id: config_footprint
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__scene_surface_type
    - ../../EnumType/enum__e_footprint_platform
seq:
  - id: bit_field
    type: u1
  - id: default_effect_pattern_name
    type: aux_types::string
    if: has_field_default_effect_pattern_name
  - id: special_surfaces
    type: dict_of__enum__scene_surface_type_dict_of__enum__e_footprint_platform_config_footprint_effect
    if: has_field_special_surfaces
instances:
  has_field_default_effect_pattern_name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_special_surfaces: # Field №1
    value: (bit_field & 0b10) != 0
types:
  dict_of__enum__scene_surface_type_dict_of__enum__e_footprint_platform_config_footprint_effect:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__scene_surface_type_dict_of__enum__e_footprint_platform_config_footprint_effect
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__scene_surface_type_dict_of__enum__e_footprint_platform_config_footprint_effect:
    seq:
      - id: key
        type: enum__scene_surface_type
      - id: value
        type: dict_of__enum__e_footprint_platform_config_footprint_effect
  dict_of__enum__e_footprint_platform_config_footprint_effect:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__e_footprint_platform_config_footprint_effect
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__e_footprint_platform_config_footprint_effect:
    seq:
      - id: key
        type: enum__e_footprint_platform
      - id: value
        type: config_footprint_effect
  config_footprint_effect:
    seq:
      - id: bit_field
        type: u1
      - id: effect
        type: aux_types::string
        if: has_field_effect
      - id: deformation
        type: aux_types::string
        if: has_field_deformation
    instances:
      has_field_effect: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_deformation: # Field №1
        value: (bit_field & 0b10) != 0
