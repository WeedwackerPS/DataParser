meta:
  id: config_audio_emitter_op
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - config_audio_operation
seq:
  - id: base
    type: config_audio_operation
instances:
  # Base class fields
  operation:
    value: base.operation
