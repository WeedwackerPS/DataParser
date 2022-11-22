types:
  config_widget_client_collector:
    seq:
      - id: base
        type: config_base_widget
      - id: bit_field
        type: u1
      - id: target_type
        type: enum__collector_type
        if: has_field_target_type
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
      - id: recharge_points
        type: aux_types::vlq_base128_le_u
        if: has_field_recharge_points
      - id: max_points
        type: aux_types::vlq_base128_le_u
        if: has_field_max_points
      - id: effect_gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_effect_gadget_id
      - id: use_gadget_id
        type: aux_types::vlq_base128_le_u
        if: has_field_use_gadget_id
      - id: allow_other_world
        type: u1
        if: has_field_allow_other_world
    instances:
      has_field_target_type: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_element_type: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_recharge_points: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_max_points: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_effect_gadget_id: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_use_gadget_id: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_allow_other_world: # Field №6
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
