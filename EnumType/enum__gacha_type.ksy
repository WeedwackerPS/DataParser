meta:
  id: enum__gacha_type
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
    enum: gacha_type
enums:
  gacha_type:
    100: gacha_type_newbie
    200: gacha_type_standard
    201: gacha_type_standard_avatar
    202: gacha_type_standard_weapon
    300: gacha_type_activity
    301: gacha_type_activity_avatar
    302: gacha_type_activity_weapon
