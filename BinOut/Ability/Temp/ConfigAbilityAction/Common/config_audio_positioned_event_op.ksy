meta:
  id: config_audio_positioned_event_op
  endian: le
  license: GPLv2
  imports:
    - config_audio_positioned_op
seq:
  - id: base
    type: config_audio_positioned_op
  - id: bit_field
    type: u1
  - id: duration
    type: f4
    if: has_field_duration
instances:
  has_field_duration: # Field №0
    value: (bit_field & 0b1) != 0
  # Base class fields
  positioning:
    value: base.positioning
  operation:
    value: base.operation
