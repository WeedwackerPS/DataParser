meta:
  id: enum__combat_property_index
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
    enum: combat_property_index
enums:
  combat_property_index:
    0: hp
    1: attack
    2: defense
    3: weight
    4: endure
    5: level
    6: elementaddhurt
    7: defenseignore
