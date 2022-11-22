types:
  config_widget_toy_water_sprite:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: ability_group_name
        type: aux_types::string
        if: has_field_ability_group_name
      - id: ability_trigger_name
        type: aux_types::string
        if: has_field_ability_trigger_name
      - id: ability_trigger_name_second
        type: aux_types::string
        if: has_field_ability_trigger_name_second
    instances:
      has_field_ability_group_name: # Field №0
        value: (bit_field & 0b001) != 0
      has_field_ability_trigger_name: # Field №1
        value: (bit_field & 0b010) != 0
      has_field_ability_trigger_name_second: # Field №2
        value: (bit_field & 0b100) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
