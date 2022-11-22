types:
  config_widget_oneoff_gather_point_detector:
    seq:
      - id: base
        type: config_base_widget
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: hint_radius
        type: aux_types::vlq_base128_le_u
        if: has_field_hint_radius
      - id: nearby_radius
        type: aux_types::vlq_base128_le_u
        if: has_field_nearby_radius
      - id: grid_search_range
        type: aux_types::vlq_base128_le_u
        if: has_field_grid_search_range
      - id: success_gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_success_gadget_id
      - id: failed_gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_failed_gadget_id
      - id: gather_point_type
        type: aux_types::vlq_base128_le_u
        if: has_field_gather_point_type
      - id: hint_group
        type: aux_types::vlq_base128_le_u
        if: has_field_hint_group
      - id: effect_last_time
        type: aux_types::vlq_base128_le_u
        if: has_field_effect_last_time
      - id: distance_to_avatar
        type: f4
        if: has_field_distance_to_avatar
      - id: height
        type: f4
        if: has_field_height
    instances:
      has_field_hint_radius: # Field №0
        value: (bit_field.value & 001) != 0
      has_field_nearby_radius: # Field №1
        value: (bit_field.value & 010) != 0
      has_field_grid_search_range: # Field №2
        value: (bit_field.value & 0b0000000100) != 0
      has_field_success_gadget_id: # Field №3
        value: (bit_field.value & 0b0000001000) != 0
      has_field_failed_gadget_id: # Field №4
        value: (bit_field.value & 0b0000010000) != 0
      has_field_gather_point_type: # Field №5
        value: (bit_field.value & 0b0000100000) != 0
      has_field_hint_group: # Field №6
        value: (bit_field.value & 0b0001000000) != 0
      has_field_effect_last_time: # Field №7
        value: (bit_field.value & 0b0010000000) != 0
      has_field_distance_to_avatar: # Field №8
        value: (bit_field.value & 0b0100000000) != 0
      has_field_height: # Field №9
        value: (bit_field.value & 0b1000000000) != 0
      # Base class fields
      material_id:
        value: base.material_id
      is_consume_material:
        value: base.is_consume_material
      is_equipable:
        value: base.is_equipable
      cool_down:
        value: base.cool_down
      cool_down_on_fail:
        value: base.cool_down_on_fail
      cool_down_group:
        value: base.cool_down_group
      is_cd_under_time_scale:
        value: base.is_cd_under_time_scale
      is_allowed_in_dungeon:
        value: base.is_allowed_in_dungeon
      is_allowed_in_room:
        value: base.is_allowed_in_room
      ornaments_type:
        value: base.ornaments_type
