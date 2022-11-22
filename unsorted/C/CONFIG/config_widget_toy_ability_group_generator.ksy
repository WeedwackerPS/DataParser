types:
  config_widget_toy_ability_group_generator:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: ability_group_name
        type: aux_types::string
        if: has_field_ability_group_name
      - id: is_team
        type: u1
        if: has_field_is_team
    instances:
      has_field_ability_group_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_is_team: # Field №1
        value: (bit_field & 0b10) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
