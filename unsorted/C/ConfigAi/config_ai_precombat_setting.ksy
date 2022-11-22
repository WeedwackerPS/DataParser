types:
  config_ai_precombat_setting:
    seq:
      - id: bit_field
        type: u1
      - id: bio_clock_sleep_from
        type: f4
        if: has_field_bio_clock_sleep_from
      - id: bio_clock_sleep_to
        type: f4
        if: has_field_bio_clock_sleep_to
      - id: satiety_time
        type: f4
        if: has_field_satiety_time
      - id: override_weather_neuron_mapping
        type: dict_of__enum__config_weather_type_array_of__enum__neuron_name__length_u
        if: has_field_override_weather_neuron_mapping
    instances:
      has_field_bio_clock_sleep_from: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_bio_clock_sleep_to: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_satiety_time: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_override_weather_neuron_mapping: # Field №3
        value: (bit_field & 0b1000) != 0
