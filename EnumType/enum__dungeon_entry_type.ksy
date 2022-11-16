meta:
  id: enum__dungeon_entry_type
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
    enum: dungeon_entry_type
enums:
  dungeon_entry_type:
    0: normal
    1: weekly
    2: daily
    3: tower
    4: effigy
    5: fleur_fair
    6: arena
    7: channeller_slab_loop
    8: channeller_slab_one_off
    9: blitz_rush
    10: sumo
    11: roguelike
