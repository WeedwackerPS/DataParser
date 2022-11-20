meta:
  id: config_audio_positioned_op
  endian: le
  license: GPLv2
  imports:
    - config_audio_operation
seq:
  - id: base
    type: config_audio_operation
  - id: bit_field
    type: u1
  - id: positioning
    type: f4
    if: has_field_positioning
instances:
  has_field_positioning: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  operation:
    value: base.operation
