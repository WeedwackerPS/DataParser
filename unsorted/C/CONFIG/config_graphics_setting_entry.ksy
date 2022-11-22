types:
  config_graphics_setting_entry:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: entry_type
        type: enum__graphics_setting_entry_type
        if: has_field_entry_type
      - id: available_options
        type: array_of__aux_types__string__length_u
        if: has_field_available_options
      - id: perf_cost_ratios
        type: array_of__f4__length_u
        if: has_field_perf_cost_ratios
      - id: display_type
        type: enum__setting_entry_display_type
        if: has_field_display_type
      - id: slider_min
        type: f4
        if: has_field_slider_min
      - id: slider_max
        type: f4
        if: has_field_slider_max
      - id: slider_interval
        type: f4
        if: has_field_slider_interval
      - id: should_cloud_game_show
        type: u1
        if: has_field_should_cloud_game_show
      - id: sort_option
        type: enum__config_graphic_setting_entry_sort_type
        if: has_field_sort_option
    instances:
      has_field_entry_type: # Field №0
        value: (bit_field.value & 01) != 0
      has_field_available_options: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_perf_cost_ratios: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_display_type: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_slider_min: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_slider_max: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_slider_interval: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_should_cloud_game_show: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_sort_option: # Field №8
        value: (bit_field.value & 0b100000000) != 0
