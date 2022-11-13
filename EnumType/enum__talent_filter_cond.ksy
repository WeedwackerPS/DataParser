meta:
  id: enum__talent_filter_cond
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__talent_filter_cond:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: talent_filter_cond
enums:
  talent_filter_cond:
    0: talent_filter_none
    1: talent_filter_fire_avatar
    2: talent_filter_elec_avatar
    3: talent_filter_water_avatar
    4: talent_filter_grass_avatar
    5: talent_filter_wind_avatar
    6: talent_filter_ice_avatar
    7: talent_filter_rock_avatar
