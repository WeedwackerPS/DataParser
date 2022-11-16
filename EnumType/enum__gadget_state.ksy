meta:
  id: enum__gadget_state
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
    enum: gadget_state
enums:
  gadget_state:
    0: default
    1: gather_drop
    101: chest_locked
    102: chest_opened
    103: chest_trap
    104: chest_bramble
    105: chest_frozen
    106: chest_rock
    201: gear_start
    202: gear_stop
    203: gear_action1
    204: gear_action2
    301: crystal_resonate1
    302: crystal_resonate2
    303: crystal_explode
    304: crystal_drain
    401: statue_active
    901: action01
    902: action02
    903: action03
