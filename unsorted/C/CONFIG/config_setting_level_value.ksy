types:
  config_setting_level_value:
    seq:
      - id: bit_field
        type: u1
      - id: quality_resolution_percentage_map
        type: dict_of__aux_types__string_aux_types__vlq_base128_le_s
        if: has_field_quality_resolution_percentage_map
      - id: graphics_recommend_grades
        type: array_of__aux_types__string__length_u
        if: has_field_graphics_recommend_grades
    instances:
      has_field_quality_resolution_percentage_map: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_graphics_recommend_grades: # Field №1
        value: (bit_field & 0b10) != 0
