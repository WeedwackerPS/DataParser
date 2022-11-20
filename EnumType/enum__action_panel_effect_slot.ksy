meta:
  id: enum__action_panel_effect_slot
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
    enum: action_panel_effect_slot
enums:
  action_panel_effect_slot:
    0: element_art
    1: element_burst
