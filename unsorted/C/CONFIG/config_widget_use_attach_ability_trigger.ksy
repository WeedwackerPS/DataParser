types:
  config_widget_use_attach_ability_trigger:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: ability_group_name
        type: aux_types::string
        if: has_field_ability_group_name
      - id: trigger_ability_name
        type: aux_types::string
        if: has_field_trigger_ability_name
    instances:
      has_field_ability_group_name: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_trigger_ability_name: # Field №1
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
