meta:
  id: config_climate
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__aux_types__vlq_base128_le_u__length_u
    - ../../EnumType/enum__json_climate_type
    - dict_of__aux_types__string_disp__config_climate_info_base
seq:
  - id: bit_field
    type: u1
  - id: common
    type: config_climate_common
    if: has_field_common
  - id: templates
    type: dict_of__aux_types__string_disp__config_climate_info_base
    if: has_field_templates
instances:
  has_field_common: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_templates: # Field №1
    value: (bit_field & 0b10) != 0
types:
  config_climate_common:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: length
        type: f4
        if: has_field_length
      - id: threshold_ratio
        type: f4
        if: has_field_threshold_ratio
      - id: debuffs
        type: dict_of__enum__json_climate_type_array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_debuffs
      - id: area_buffs
        type: dict_of__enum__json_climate_type_array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_area_buffs
      - id: miscs
        type: config_climate_misc
        if: has_field_miscs
      - id: perform
        type: config_climate_perform
        if: has_field_perform
      - id: ui_warning_ratio
        type: f4
        if: has_field_ui_warning_ratio
      - id: ui_len_weak_intensity
        type: f4
        if: has_field_ui_len_weak_intensity
      - id: ui_len_lerp_speed
        type: f4
        if: has_field_ui_len_lerp_speed
    instances:
      has_field_length: # Field №0
        value: (bit_field.value & 0b000000001) != 0
      has_field_threshold_ratio: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_debuffs: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_area_buffs: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_miscs: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_perform: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_ui_warning_ratio: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_ui_len_weak_intensity: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_ui_len_lerp_speed: # Field №8
        value: (bit_field.value & 0b100000000) != 0
  dict_of__enum__json_climate_type_array_of__aux_types__vlq_base128_le_u__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__json_climate_type_array_of__aux_types__vlq_base128_le_u__length_u
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__json_climate_type_array_of__aux_types__vlq_base128_le_u__length_u:
    seq:
      - id: key
        type: enum__json_climate_type
      - id: value
        type: array_of__aux_types__vlq_base128_le_u__length_u
  config_climate_misc:
    seq:
      - id: bit_field
        type: u1
      - id: damping_time
        type: f4
        if: has_field_damping_time
      - id: fade_speed
        type: f4
        if: has_field_fade_speed
    instances:
      has_field_damping_time: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_fade_speed: # Field №1
        value: (bit_field & 0b10) != 0
  config_climate_perform:
    seq:
      - id: bit_field
        type: u1
      - id: chance
        type: f4
        if: has_field_chance
      - id: perform_triggers
        type: dict_of__enum__json_climate_type_aux_types__string
        if: has_field_perform_triggers
    instances:
      has_field_chance: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_perform_triggers: # Field №1
        value: (bit_field & 0b10) != 0
  dict_of__enum__json_climate_type_aux_types__string:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_enum__json_climate_type_aux_types__string
        repeat: expr
        repeat-expr: length.value
  kvp_of_enum__json_climate_type_aux_types__string:
    seq:
      - id: key
        type: enum__json_climate_type
      - id: value
        type: aux_types::string
