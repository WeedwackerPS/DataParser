types:
  context_action_select_scene_mark:
    seq:
      - id: base
        type: context_action
      - id: bit_field
        type: u1
      - id: icon_type
        type: enum__mark_icon_type
        if: has_field_icon_type
      - id: city_id
        type: aux_types::vlq_base128_le_u
        if: has_field_city_id
      - id: scene_ids
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_scene_ids
    instances:
      has_field_icon_type: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_city_id: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_scene_ids: # Field №2
        value: (bit_field & 0b100) != 0
