meta:
  id: enum__speical_furniture_type
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
    enum: speical_furniture_type
enums:
  speical_furniture_type:
    0: normal_furnitrue
    1: block_dependent
    2: farm_field
    3: teleport_point
    4: fishpond
    5: npc
    6: apartment
    7: furniture_suite
    8: paimon
    9: fish
    10: custom_base_furnitrue
    11: custom_node_furnitrue
