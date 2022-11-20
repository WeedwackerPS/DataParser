meta:
  id: config_audio_positioned_emitter_op
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - config_audio_positioned_op
seq:
  - id: base
    type: config_audio_positioned_op
instances:
  # Base class fields
  positioning:
    value: base.positioning
  operation:
    value: base.operation
