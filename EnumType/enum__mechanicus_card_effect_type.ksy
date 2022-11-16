meta:
  id: enum__mechanicus_card_effect_type
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
    enum: mechanicus_card_effect_type
enums:
  mechanicus_card_effect_type:
    0: mechanicus_card_effect_none
    1: mechanicus_card_effect_set_sgv
    2: mechanicus_card_effect_mod_cost
    3: mechanicus_card_effect_mod_refund
    4: mechanicus_card_effect_set_home_hp
    5: mechanicus_card_effect_add_home_hp
    6: mechanicus_card_effect_add_kill_points
    7: mechanicus_card_effect_mod_kill_points
    8: mechanicus_card_effect_add_gear_num
    9: mechanicus_card_effect_kill_gears
    10: mechanicus_card_effect_grant_points
    11: mechanicus_card_notify_lua
    12: mechanicus_passive_aura_bonus_points
    13: mechanicus_passive_aura_sgv
