meta:
  id: enum__play_mode
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: play_mode
enums:
  play_mode:
    0: play_mode_all
    1: play_mode_single
    2: play_mode_multiple
    3: play_mode_host
    4: play_mode_guest
