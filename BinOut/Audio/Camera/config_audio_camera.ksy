meta:
  id: config_audio_camera
  endian: le
  license: GPLv2
  imports:
    - ../../Common/config_wwise_string
seq:
  - id: bit_field
    type: u1
  - id: camera_pitch_rtpc_key
    type: config_wwise_string
    if: has_field_camera_pitch_rtpc_key
instances:
  has_field_camera_pitch_rtpc_key: # Field №0
    value: (bit_field & 0b1) != 0
