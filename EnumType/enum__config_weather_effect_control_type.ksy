meta:
  id: enum__config_weather_effect_control_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: config_weather_effect_control_type
enums:
  config_weather_effect_control_type:
    0: set_emit_offset_pos
    1: set_emit_play_speed
    2: set_emit_play_speed_with_lerp
    3: set_velocity_multiplier
    4: set_emit_position
