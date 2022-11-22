types:
  config_ui_global:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: input_actions
        type: dict_of__enum__input_action_type_disp__config_base_input_action
        if: has_field_input_actions
      - id: input_events
        type: dict_of__enum__input_event_type_config_base_input_event
        if: has_field_input_events
      - id: action_groups
        type: dict_of__aux_types__string_array_of__input_action_event__length_u
        if: has_field_action_groups
      - id: input_modes
        type: dict_of__aux_types__string_config_base_context
        if: has_field_input_modes
      - id: joypad_change_view_scale
        type: point2d
        if: has_field_joypad_change_view_scale
      - id: joypad_long_press_duration
        type: f4
        if: has_field_joypad_long_press_duration
      - id: joypad_sense_scales
        type: array_of__f4__length_u
        if: has_field_joypad_sense_scales
      - id: joypad_focus_sense_scales
        type: array_of__f4__length_u
        if: has_field_joypad_focus_sense_scales
      - id: mouse_sense_scales
        type: array_of__f4__length_u
        if: has_field_mouse_sense_scales
      - id: mouse_focus_sense_scales
        type: array_of__f4__length_u
        if: has_field_mouse_focus_sense_scales
      - id: touchpad_sense_scales
        type: array_of__f4__length_u
        if: has_field_touchpad_sense_scales
      - id: touchpad_focus_sense_scales
        type: array_of__f4__length_u
        if: has_field_touchpad_focus_sense_scales
      - id: touchpad_focus_acceleration_scales
        type: array_of__f4__length_u
        if: has_field_touchpad_focus_acceleration_scales
      - id: touchpad_focus_acceleration_para
        type: touchpad_focus_acceleration_sigmoid_para
        if: has_field_touchpad_focus_acceleration_para
      - id: config_ui_photograph
        type: config_ui_photograph
        if: has_field_config_ui_photograph
    instances:
      has_field_input_actions: # Field №0
        value: (bit_field.value & 00000001) != 0
      has_field_input_events: # Field №1
        value: (bit_field.value & 00000010) != 0
      has_field_action_groups: # Field №2
        value: (bit_field.value & 00000100) != 0
      has_field_input_modes: # Field №3
        value: (bit_field.value & 00001000) != 0
      has_field_joypad_change_view_scale: # Field №4
        value: (bit_field.value & 00010000) != 0
      has_field_joypad_long_press_duration: # Field №5
        value: (bit_field.value & 00100000) != 0
      has_field_joypad_sense_scales: # Field №6
        value: (bit_field.value & 01000000) != 0
      has_field_joypad_focus_sense_scales: # Field №7
        value: (bit_field.value & 0b000000010000000) != 0
      has_field_mouse_sense_scales: # Field №8
        value: (bit_field.value & 0b000000100000000) != 0
      has_field_mouse_focus_sense_scales: # Field №9
        value: (bit_field.value & 0b000001000000000) != 0
      has_field_touchpad_sense_scales: # Field №10
        value: (bit_field.value & 0b000010000000000) != 0
      has_field_touchpad_focus_sense_scales: # Field №11
        value: (bit_field.value & 0b000100000000000) != 0
      has_field_touchpad_focus_acceleration_scales: # Field №12
        value: (bit_field.value & 0b001000000000000) != 0
      has_field_touchpad_focus_acceleration_para: # Field №13
        value: (bit_field.value & 0b010000000000000) != 0
      has_field_config_ui_photograph: # Field №14
        value: (bit_field.value & 0b100000000000000) != 0
