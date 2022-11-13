meta:
  id: enum__guide_page_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__guide_page_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: guide_page_type
enums:
  guide_page_type:
    0: normal
    1: equip_promote
    2: relic_promote
    3: talent_info
    4: relic_info
    5: weapon_info
    6: skill_info
    7: weapon_select
    8: relic_select
    9: theatre_mechanicus_building
    10: theatre_mechanicus_rebuilding
