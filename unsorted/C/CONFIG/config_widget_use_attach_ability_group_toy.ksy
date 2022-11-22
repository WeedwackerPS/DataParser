types:
  config_widget_use_attach_ability_group_toy:
    seq:
      - id: base
        type: config_base_widget
      - id: bit_field
        type: u1
      - id: ability_group_name
        type: aux_types::string
        if: has_field_ability_group_name
      - id: ability_group_name_second
        type: aux_types::string
        if: has_field_ability_group_name_second
      - id: ability_name
        type: aux_types::string
        if: has_field_ability_name
      - id: is_update_cd_after_ability_trigger
        type: u1
        if: has_field_is_update_cd_after_ability_trigger
    instances:
      has_field_ability_group_name: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_ability_group_name_second: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_ability_name: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_is_update_cd_after_ability_trigger: # Field №3
        value: (bit_field & 0b1000) != 0
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
