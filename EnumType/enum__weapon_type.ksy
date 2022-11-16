meta:
  id: enum__weapon_type
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
    enum: weapon_type
enums:
  weapon_type:
    0: weapon_none
    1: weapon_sword_one_hand
    2: weapon_crossbow
    3: weapon_staff
    4: weapon_double_dagger
    5: weapon_katana
    6: weapon_shuriken
    7: weapon_stick
    8: weapon_spear
    9: weapon_shield_small
    10: weapon_catalyst
    11: weapon_claymore
    12: weapon_bow
    13: weapon_pole
