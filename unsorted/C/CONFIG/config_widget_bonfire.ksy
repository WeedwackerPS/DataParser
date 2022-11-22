types:
  config_widget_bonfire:
    seq:
      - id: base
        type: config_base_widget
      - id: bit_field
        type: u1
      - id: lasting_time
        type: aux_types::vlq_base128_le_u
        if: has_field_lasting_time
      - id: max_count_in_scene
        type: aux_types::vlq_base128_le_u
        if: has_field_max_count_in_scene
      - id: max_count_by_player
        type: aux_types::vlq_base128_le_u
        if: has_field_max_count_by_player
      - id: gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_gadget_id
      - id: distance_to_avatar
        type: f4
        if: has_field_distance_to_avatar
      - id: radius
        type: f4
        if: has_field_radius
      - id: combat_destroy_distance
        type: f4
        if: has_field_combat_destroy_distance
    instances:
      has_field_lasting_time: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_max_count_in_scene: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_max_count_by_player: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_gadget_id: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_distance_to_avatar: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_radius: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_combat_destroy_distance: # Field №6
        value: (bit_field & 0b1000000) != 0
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
