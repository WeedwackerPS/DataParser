meta:
  id: enum__audio_emitter_multi_position_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__audio_emitter_multi_position_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: audio_emitter_multi_position_type
enums:
  audio_emitter_multi_position_type:
    0: multi_sources
    1: multi_directions
