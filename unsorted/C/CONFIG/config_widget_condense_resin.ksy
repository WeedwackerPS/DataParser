types:
  config_widget_condense_resin:
    seq:
      - id: base
        type: config_base_widget
      - id: bit_field
        type: u1
      - id: replace_resin_count
        type: aux_types::vlq_base128_le_u
        if: has_field_replace_resin_count
    instances:
      has_field_replace_resin_count: # Field №0
        value: (bit_field & 0b1) != 0
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
