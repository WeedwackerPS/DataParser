meta:
  id: enum__state_audio_event_usage
  endian: le
  license: GPLv2
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: state_audio_event_usage
enums:
  state_audio_event_usage:
    0: any
    1: in_set
    2: except_
