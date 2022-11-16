meta:
  id: enum__massive_element_trigger_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
seq:
  - id: data
    type: aux_types::vlq_base128_le_s
instances:
  value:
    value: data.value
    enum: massive_element_trigger_type
enums:
  massive_element_trigger_type:
    0: trigger_anti_fire
    1: trigger_burning
    2: trigger_explode
    3: trigger_superconductor
    4: trigger_melt
    5: trigger_steam
    6: trigger_freeze
    7: trigger_frozen
    8: trigger_electric_add
    9: trigger_vehicle_mute_ice
    10: count
