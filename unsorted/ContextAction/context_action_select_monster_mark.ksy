types:
  context_action_select_monster_mark:
    seq:
      - id: base
        type: context_action
      - id: bit_field
        type: u1
      - id: monster_id
        type: aux_types::vlq_base128_le_u
        if: has_field_monster_id
      - id: need_track
        type: u1
        if: has_field_need_track
    instances:
      has_field_monster_id: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_need_track: # Field №1
        value: (bit_field & 0b10) != 0
