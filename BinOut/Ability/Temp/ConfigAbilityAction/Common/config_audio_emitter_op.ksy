meta:
  id: config_audio_emitter_op
  endian: le
  license: GPLv2
  imports:
    - config_audio_operation
seq:
  - id: base
    type: config_audio_operation
instances:
  # Base class fields
  operation:
    value: base.operation
