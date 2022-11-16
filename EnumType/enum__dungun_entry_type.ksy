meta:
  id: enum__dungun_entry_type
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
    enum: dungun_entry_type
enums:
  dungun_entry_type:
    0: dungen_entry_type_none
    1: dungen_entry_type_avatar_exp
    2: dungen_entry_type_weapon_promote
    3: dungen_entry_type_avatar_talent
    4: dungen_entry_type_reliquary
    5: dungen_entry_type_scoin
    6: dungeon_entry_type_obscurae
    7: dungeon_entry_type_normal
    8: dungeon_entry_type_trial
    9: dungeon_entry_type_effigy
    10: dungeon_entry_type_fleur_fair
    11: dungeon_entry_type_channeller_slab_loop
    12: dungeon_entry_type_channeller_slab_one_off
    13: dungeon_entry_type_blitz_rush
    14: dungeon_entry_type_sumo
    15: dungeon_entry_type_activity
