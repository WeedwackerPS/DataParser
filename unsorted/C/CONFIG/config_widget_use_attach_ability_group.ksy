types:
  config_widget_use_attach_ability_group:
    seq:
      - id: base
        type: config_base_widget_toy
      - id: bit_field
        type: u1
      - id: ability_group_name
        type: aux_types::string
        if: has_field_ability_group_name
      - id: ability_group_name_second
        type: aux_types::string
        if: has_field_ability_group_name_second
      - id: replace_skill_hint_list
        type: array_of__enum__widget_skill_replace_type__length_u
        if: has_field_replace_skill_hint_list
      - id: is_update_cd_after_ability_trigger
        type: u1
        if: has_field_is_update_cd_after_ability_trigger
    instances:
      has_field_ability_group_name: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_ability_group_name_second: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_replace_skill_hint_list: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_is_update_cd_after_ability_trigger: # Field №3
        value: (bit_field & 0b1000) != 0
      # Base class fields
      is_consume_material:
        value: base.is_consume_material
      cd_group:
        value: base.cd_group
      tags:
        value: base.tags
      business_type:
        value: base.business_type
