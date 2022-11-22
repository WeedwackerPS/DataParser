types:
  config_widget_client_detector:
    seq:
      - id: base
        type: config_base_widget
      - id: bit_field
        type: u1
      - id: gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_gadget_id
      - id: allow_city_id
        type: aux_types::vlq_base128_le_u
        if: has_field_allow_city_id
      - id: hint_group
        type: aux_types::vlq_base128_le_u
        if: has_field_hint_group
      - id: distance_to_avatar
        type: f4
        if: has_field_distance_to_avatar
      - id: height
        type: f4
        if: has_field_height
    instances:
      has_field_gadget_id: # Field №0
        value: (bit_field & 0b00001) != 0
      has_field_allow_city_id: # Field №1
        value: (bit_field & 0b00010) != 0
      has_field_hint_group: # Field №2
        value: (bit_field & 0b00100) != 0
      has_field_distance_to_avatar: # Field №3
        value: (bit_field & 0b01000) != 0
      has_field_height: # Field №4
        value: (bit_field & 0b10000) != 0
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
