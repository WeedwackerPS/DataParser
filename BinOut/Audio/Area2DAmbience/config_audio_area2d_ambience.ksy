meta:
  id: config_audio_area2d_ambience
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/array_of__vector__length_u
    - ../../Common/config_wwise_string
    - ../../Common/array_of__config_wwise_string__length_u
    - ../Common/array_of__audio_state_op__length_u
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: area_name
    type: aux_types::string
    if: has_field_area_name
  - id: area_points
    type: array_of__vector__length_u
    if: has_field_area_points
  - id: y_zero_anchor
    type: f4
    if: has_field_y_zero_anchor
  - id: area_group_name
    type: config_wwise_string
    if: has_field_area_group_name
  - id: enable_height_check
    type: u1
    if: has_field_enable_height_check
  - id: top
    type: f4
    if: has_field_top
  - id: bottom
    type: f4
    if: has_field_bottom
  - id: is_ambience
    type: u1
    if: has_field_is_ambience
  - id: enter_events
    type: array_of__config_wwise_string__length_u
    if: has_field_enter_events
  - id: leave_events
    type: array_of__config_wwise_string__length_u
    if: has_field_leave_events
  - id: is_reverb
    type: u1
    if: has_field_is_reverb
  - id: aux_bus_name
    type: config_wwise_string
    if: has_field_aux_bus_name
  - id: priority
    type: aux_types::vlq_base128_le_s
    if: has_field_priority
  - id: exclude_other
    type: u1
    if: has_field_exclude_other
  - id: enable_change_states
    type: u1
    if: has_field_enable_change_states
  - id: enter_states
    type: array_of__audio_state_op__length_u
    if: has_field_enter_states
  - id: leave_states
    type: array_of__audio_state_op__length_u
    if: has_field_leave_states
instances:
  has_field_area_name: # Field №0
    value: (bit_field.value & 0b00000000000000001) != 0
  has_field_area_points: # Field №1
    value: (bit_field.value & 0b00000000000000010) != 0
  has_field_y_zero_anchor: # Field №2
    value: (bit_field.value & 0b00000000000000100) != 0
  has_field_area_group_name: # Field №3
    value: (bit_field.value & 0b00000000000001000) != 0
  has_field_enable_height_check: # Field №4
    value: (bit_field.value & 0b00000000000010000) != 0
  has_field_top: # Field №5
    value: (bit_field.value & 0b00000000000100000) != 0
  has_field_bottom: # Field №6
    value: (bit_field.value & 0b00000000001000000) != 0
  has_field_is_ambience: # Field №7
    value: (bit_field.value & 0b00000000010000000) != 0
  has_field_enter_events: # Field №8
    value: (bit_field.value & 0b00000000100000000) != 0
  has_field_leave_events: # Field №9
    value: (bit_field.value & 0b00000001000000000) != 0
  has_field_is_reverb: # Field №10
    value: (bit_field.value & 0b00000010000000000) != 0
  has_field_aux_bus_name: # Field №11
    value: (bit_field.value & 0b00000100000000000) != 0
  has_field_priority: # Field №12
    value: (bit_field.value & 0b00001000000000000) != 0
  has_field_exclude_other: # Field №13
    value: (bit_field.value & 0b00010000000000000) != 0
  has_field_enable_change_states: # Field №14
    value: (bit_field.value & 0b00100000000000000) != 0
  has_field_enter_states: # Field №15
    value: (bit_field.value & 0b01000000000000000) != 0
  has_field_leave_states: # Field №16
    value: (bit_field.value & 0b10000000000000000) != 0
