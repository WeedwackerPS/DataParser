meta:
  id: enum__radar_hint_type
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
    enum: radar_hint_type
enums:
  radar_hint_type:
    0: none_radar
    1: oculus
    2: ore
    3: harvet_gadget
    4: small_meteorite
    5: dulins_essence
    6: hide_energy_ball
    7: echo_shell
    8: luna_rite_moonlit_sigil
    9: regin_feather_intact
    10: regin_tree_frag
