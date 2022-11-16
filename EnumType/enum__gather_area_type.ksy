meta:
  id: enum__gather_area_type
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
    enum: gather_area_type
enums:
  gather_area_type:
    1: ability_radar_collectables_mengde
    2: ability_radar_collectables_liyue
    3: ability_radar_collectables_daoqi
    998: ability_radar_ore
    999: collect_general
