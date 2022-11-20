meta:
  id: enum__json_climate_type
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
    enum: json_climate_type
enums:
  json_climate_type:
    0: normal
    1: cold
    2: hot
    3: cold_monster
    4: hot_monster
    5: sea_mist
    6: hero_course
    7: sea_mist_surrounding
    8: tatari_region
    9: trans_climate
    10: seirai_storm
    11: tsurumi_mist
    12: tsurumi_thunder
    13: tsurumi_regional_mist
    14: count
