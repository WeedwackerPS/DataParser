meta:
  id: enum__grow_curve_type
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
    enum: grow_curve_type
enums:
  grow_curve_type:
    0: grow_curve_none
    1: grow_curve_hp
    2: grow_curve_attack
    3: grow_curve_stamina
    4: grow_curve_strike
    5: grow_curve_anti_strike
    6: grow_curve_anti_strike1
    7: grow_curve_anti_strike2
    8: grow_curve_anti_strike3
    9: grow_curve_strike_hurt
    10: grow_curve_element
    11: grow_curve_kill_exp
    12: grow_curve_defense
    13: grow_curve_attack_bomb
    14: grow_curve_hp_littlemonster
    15: grow_curve_element_mastery
    16: grow_curve_progression
    17: grow_curve_defending
    18: grow_curve_mhp
    19: grow_curve_matk
    20: grow_curve_toweratk
    21: grow_curve_hp_s5
    22: grow_curve_hp_s4
    23: grow_curve_hp_2
    31: grow_curve_attack_s5
    32: grow_curve_attack_s4
    33: grow_curve_attack_s3
    34: grow_curve_strike_s5
    41: grow_curve_defense_s5
    42: grow_curve_defense_s4
    1101: grow_curve_attack_101
    1102: grow_curve_attack_102
    1103: grow_curve_attack_103
    1104: grow_curve_attack_104
    1105: grow_curve_attack_105
    1201: grow_curve_attack_201
    1202: grow_curve_attack_202
    1203: grow_curve_attack_203
    1204: grow_curve_attack_204
    1205: grow_curve_attack_205
    1301: grow_curve_attack_301
    1302: grow_curve_attack_302
    1303: grow_curve_attack_303
    1304: grow_curve_attack_304
    1305: grow_curve_attack_305
    2101: grow_curve_critical_101
    2102: grow_curve_critical_102
    2103: grow_curve_critical_103
    2104: grow_curve_critical_104
    2105: grow_curve_critical_105
    2201: grow_curve_critical_201
    2202: grow_curve_critical_202
    2203: grow_curve_critical_203
    2204: grow_curve_critical_204
    2205: grow_curve_critical_205
    2301: grow_curve_critical_301
    2302: grow_curve_critical_302
    2303: grow_curve_critical_303
    2304: grow_curve_critical_304
    2305: grow_curve_critical_305
