meta:
  id: enum__unstick_action
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
    enum: unstick_action
enums:
  unstick_action:
    0: stay
    1: keep
    2: destroy
    3: stay_and_return
