meta:
  id: audio_one_time_event
  endian: le
  license: GPLv2
  imports:
    - ../../Common/config_wwise_string
seq:
  - id: bit_field
    type: u1
  - id: event_name
    type: config_wwise_string
    if: has_field_event_name
  - id: duration
    type: f4
    if: has_field_duration
instances:
  has_field_event_name: # Field №0
    value: (bit_field & 0b01) != 0
  has_field_duration: # Field №1
    value: (bit_field & 0b10) != 0
