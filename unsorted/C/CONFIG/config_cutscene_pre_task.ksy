types:
  config_cutscene_pre_task:
    seq:
      - id: bit_field
        type: u1
      - id: duration
        type: f4
        if: has_field_duration
      - id: target_day_time
        type: f4
        if: has_field_target_day_time
      - id: target_weather
        type: aux_types::string
        if: has_field_target_weather
    instances:
      has_field_duration: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_target_day_time: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_target_weather: # Field №2
        value: (bit_field & 0b100) != 0
