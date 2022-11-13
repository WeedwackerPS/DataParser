meta:
  id: enum__dungeon_type
  endian: le
  license: MIT
  imports:
    - ../aux_types
types:
  enum__dungeon_type:
    seq:
      - id: data
        type: aux_types::vlq_base128_le_s
    instances:
      value:
        value: data.value
        enum: dungeon_type
enums:
  dungeon_type:
    0: dungeon_none
    1: dungeon_plot
    2: dungeon_fight
    3: dungeon_daily_fight
    4: dungeon_weekly_fight
    5: dungeon_discarded
    6: dungeon_tower
    7: dungeon_boss
    8: dungeon_activity
    9: dungeon_effigy
    10: dungeon_element_challenge
    11: dungeon_theatre_mechanicus
    12: dungeon_fleur_fair
    13: dungeon_channeller_slab_loop
    14: dungeon_channeller_slab_one_off
    15: dungeon_blitz_rush
    16: dungeon_chess
    17: dungeon_sumo_combat
    18: dungeon_roguelike
