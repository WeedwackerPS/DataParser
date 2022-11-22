meta:
  id: config_audio_avatar_move
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - ../../Common/config_wwise_string
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: fly_direction_rtpc_key
    type: config_wwise_string
    if: has_field_fly_direction_rtpc_key
  - id: fly_direction_rtpc_front
    type: f4
    if: has_field_fly_direction_rtpc_front
  - id: fly_direction_rtpc_side
    type: f4
    if: has_field_fly_direction_rtpc_side
  - id: fly_direction_rtpc_back
    type: f4
    if: has_field_fly_direction_rtpc_back
  - id: fly_direction_rtpc_drop
    type: f4
    if: has_field_fly_direction_rtpc_drop
  - id: last_frame_speed_in_air_rtpc_key
    type: config_wwise_string
    if: has_field_last_frame_speed_in_air_rtpc_key
  - id: event_fall_in_water
    type: config_wwise_string
    if: has_field_event_fall_in_water
  - id: altitude_rtpc_key
    type: config_wwise_string
    if: has_field_altitude_rtpc_key
  - id: slope_rtpc_key
    type: config_wwise_string
    if: has_field_slope_rtpc_key
  - id: fly_turn_event
    type: config_wwise_string
    if: has_field_fly_turn_event
  - id: fly_turn_event_interval
    type: f4
    if: has_field_fly_turn_event_interval
  - id: fly_speed_rtpc_key
    type: config_wwise_string
    if: has_field_fly_speed_rtpc_key
  - id: airflow_speed_gain
    type: f4
    if: has_field_airflow_speed_gain
  - id: airflow_gain_fade_length
    type: f4
    if: has_field_airflow_gain_fade_length
  - id: climb_vertical_scaler_rtpc_key
    type: config_wwise_string
    if: has_field_climb_vertical_scaler_rtpc_key
  - id: climb_vertical_scaler_animator_key
    type: config_wwise_string
    if: has_field_climb_vertical_scaler_animator_key
  - id: camera_angle_x_rtpc_key
    type: config_wwise_string
    if: has_field_camera_angle_x_rtpc_key
  - id: camera_angle_y_rtpc_key
    type: config_wwise_string
    if: has_field_camera_angle_y_rtpc_key
  - id: enter_speedup_field_event
    type: config_wwise_string
    if: has_field_enter_speedup_field_event
  - id: fall_on_water_rtpc_key
    type: config_wwise_string
    if: has_field_fall_on_water_rtpc_key
instances:
  has_field_fly_direction_rtpc_key: # Field №0
    value: (bit_field.value & 0b00000000000000000001) != 0
  has_field_fly_direction_rtpc_front: # Field №1
    value: (bit_field.value & 0b00000000000000000010) != 0
  has_field_fly_direction_rtpc_side: # Field №2
    value: (bit_field.value & 0b00000000000000000100) != 0
  has_field_fly_direction_rtpc_back: # Field №3
    value: (bit_field.value & 0b00000000000000001000) != 0
  has_field_fly_direction_rtpc_drop: # Field №4
    value: (bit_field.value & 0b00000000000000010000) != 0
  has_field_last_frame_speed_in_air_rtpc_key: # Field №5
    value: (bit_field.value & 0b00000000000000100000) != 0
  has_field_event_fall_in_water: # Field №6
    value: (bit_field.value & 0b00000000000001000000) != 0
  has_field_altitude_rtpc_key: # Field №7
    value: (bit_field.value & 0b00000000000010000000) != 0
  has_field_slope_rtpc_key: # Field №8
    value: (bit_field.value & 0b00000000000100000000) != 0
  has_field_fly_turn_event: # Field №9
    value: (bit_field.value & 0b00000000001000000000) != 0
  has_field_fly_turn_event_interval: # Field №10
    value: (bit_field.value & 0b00000000010000000000) != 0
  has_field_fly_speed_rtpc_key: # Field №11
    value: (bit_field.value & 0b00000000100000000000) != 0
  has_field_airflow_speed_gain: # Field №12
    value: (bit_field.value & 0b00000001000000000000) != 0
  has_field_airflow_gain_fade_length: # Field №13
    value: (bit_field.value & 0b00000010000000000000) != 0
  has_field_climb_vertical_scaler_rtpc_key: # Field №14
    value: (bit_field.value & 0b00000100000000000000) != 0
  has_field_climb_vertical_scaler_animator_key: # Field №15
    value: (bit_field.value & 0b00001000000000000000) != 0
  has_field_camera_angle_x_rtpc_key: # Field №16
    value: (bit_field.value & 0b00010000000000000000) != 0
  has_field_camera_angle_y_rtpc_key: # Field №17
    value: (bit_field.value & 0b00100000000000000000) != 0
  has_field_enter_speedup_field_event: # Field №18
    value: (bit_field.value & 0b01000000000000000000) != 0
  has_field_fall_on_water_rtpc_key: # Field №19
    value: (bit_field.value & 0b10000000000000000000) != 0
