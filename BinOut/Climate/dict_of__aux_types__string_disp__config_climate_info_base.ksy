meta:
  id: dict_of__aux_types__string_disp__config_climate_info_base
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../EnumType/enum__json_climate_type
    - ../Common/vector
seq:
  - id: length
    type: aux_types::vlq_base128_le_u
  - id: items
    type: kvp_of_aux_types__string_disp__config_climate_info_base
    repeat: expr
    repeat-expr: length.value
types:
  kvp_of_aux_types__string_disp__config_climate_info_base:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: disp__config_climate_info_base
  disp__config_climate_info_base:
    seq:
      - id: type_code
        type: aux_types::vlq_base128_le_u
      - id: data
        type:
          switch-on: type_code.value
          cases:
            0: config_climate_info_base
            1: config_climate_info
            _: aux_types::error
  config_climate_info_base:
    seq: []
  config_climate_info:
    seq:
      - id: base
        type: config_climate_info_base
      - id: bit_field
        type: u1
      - id: climate_type
        type: enum__json_climate_type
        if: has_field_climate_type
      - id: temperature_options
        type: config_climate_temperature_options
        if: has_field_temperature_options
      - id: climate_ui_info
        type: config_climate_ui
        if: has_field_climate_ui_info
      - id: climate_screen_eff_audio
        type: config_climate_audio
        if: has_field_climate_screen_eff_audio
    instances:
      has_field_climate_type: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_temperature_options: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_climate_ui_info: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_climate_screen_eff_audio: # Field №3
        value: (bit_field & 0b1000) != 0
  config_climate_temperature_options:
    seq:
      - id: bit_field
        type: u1
      - id: speed
        type: f4
        if: has_field_speed
    instances:
      has_field_speed: # Field №0
        value: (bit_field & 0b1) != 0
  config_climate_ui:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: climate_info_btn_icon
        type: aux_types::string
        if: has_field_climate_info_btn_icon
      - id: climate_dialog_title
        type: aux_types::string
        if: has_field_climate_dialog_title
      - id: climate_dialog_desc
        type: aux_types::string
        if: has_field_climate_dialog_desc
      - id: climate_dialog_left_icon
        type: aux_types::string
        if: has_field_climate_dialog_left_icon
      - id: climate_dialog_left_bg
        type: aux_types::string
        if: has_field_climate_dialog_left_bg
      - id: show_climate_meter
        type: u1
        if: has_field_show_climate_meter
      - id: climate_meter_color_index
        type: aux_types::vlq_base128_le_u
        if: has_field_climate_meter_color_index
      - id: climate_meter_bg_color_index
        type: aux_types::vlq_base128_le_u
        if: has_field_climate_meter_bg_color_index
      - id: screen_effect_index
        type: aux_types::vlq_base128_le_u
        if: has_field_screen_effect_index
      - id: climate_info_show_with_meter_type
        type: u1
        if: has_field_climate_info_show_with_meter_type
      - id: ui_low_warning_ratio
        type: f4
        if: has_field_ui_low_warning_ratio
      - id: ui_len_low_intensity
        type: f4
        if: has_field_ui_len_low_intensity
      - id: ui_middle_warning_ratio
        type: f4
        if: has_field_ui_middle_warning_ratio
      - id: ui_len_middle_intensity
        type: f4
        if: has_field_ui_len_middle_intensity
    instances:
      has_field_climate_info_btn_icon: # Field №0
        value: (bit_field.value & 0b00000000000001) != 0
      has_field_climate_dialog_title: # Field №1
        value: (bit_field.value & 0b00000000000010) != 0
      has_field_climate_dialog_desc: # Field №2
        value: (bit_field.value & 0b00000000000100) != 0
      has_field_climate_dialog_left_icon: # Field №3
        value: (bit_field.value & 0b00000000001000) != 0
      has_field_climate_dialog_left_bg: # Field №4
        value: (bit_field.value & 0b00000000010000) != 0
      has_field_show_climate_meter: # Field №5
        value: (bit_field.value & 0b00000000100000) != 0
      has_field_climate_meter_color_index: # Field №6
        value: (bit_field.value & 0b00000001000000) != 0
      has_field_climate_meter_bg_color_index: # Field №7
        value: (bit_field.value & 0b00000010000000) != 0
      has_field_screen_effect_index: # Field №8
        value: (bit_field.value & 0b00000100000000) != 0
      has_field_climate_info_show_with_meter_type: # Field №9
        value: (bit_field.value & 0b00001000000000) != 0
      has_field_ui_low_warning_ratio: # Field №10
        value: (bit_field.value & 0b00010000000000) != 0
      has_field_ui_len_low_intensity: # Field №11
        value: (bit_field.value & 0b00100000000000) != 0
      has_field_ui_middle_warning_ratio: # Field №12
        value: (bit_field.value & 0b01000000000000) != 0
      has_field_ui_len_middle_intensity: # Field №13
        value: (bit_field.value & 0b10000000000000) != 0
  config_climate_audio:
    seq:
      - id: bit_field
        type: u1
      - id: ui_len_stop_audio
        type: aux_types::string
        if: has_field_ui_len_stop_audio
      - id: ui_len_low_audio
        type: aux_types::string
        if: has_field_ui_len_low_audio
      - id: ui_len_middle_audio
        type: aux_types::string
        if: has_field_ui_len_middle_audio
      - id: ui_len_max_audio
        type: aux_types::string
        if: has_field_ui_len_max_audio
    instances:
      has_field_ui_len_stop_audio: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_ui_len_low_audio: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_ui_len_middle_audio: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_ui_len_max_audio: # Field №3
        value: (bit_field & 0b1000) != 0
