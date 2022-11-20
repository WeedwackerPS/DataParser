meta:
  id: config_audio_operation
  endian: le
  license: GPLv2
  imports:
    - ../../../../Common/config_wwise_string
seq:
  - id: bit_field
    type: u1
  - id: operation
    type: config_wwise_string
    if: has_field_operation
instances:
  has_field_operation: # Field №0
    value: (bit_field & 0b1) != 0
