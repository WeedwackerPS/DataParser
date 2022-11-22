meta:
  id: config_audio_city_blocks
  endian: le
  license: GPLv2
  imports:
    - ../../Common/dict_of__aux_types__string_config_wwise_string
seq:
  - id: bit_field
    type: u1
  - id: music_sub_states
    type: dict_of__aux_types__string_config_wwise_string
    if: has_field_music_sub_states
instances:
  has_field_music_sub_states: # Field №0
    value: (bit_field & 0b1) != 0
