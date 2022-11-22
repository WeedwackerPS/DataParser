types:
  config_level_entity:
    seq:
      - id: base
        type: config_entity
      - id: bit_field
        type: u1
      - id: drop_elem_control_type
        type: enum__drop_elem_control_type
        if: has_field_drop_elem_control_type
      - id: abilities
        type: array_of__config_entity_ability_entry__length_u
        if: has_field_abilities
      - id: avatar_abilities
        type: array_of__config_entity_ability_entry__length_u
        if: has_field_avatar_abilities
      - id: team_abilities
        type: array_of__config_entity_ability_entry__length_u
        if: has_field_team_abilities
      - id: monster_abilities
        type: array_of__config_entity_ability_entry__length_u
        if: has_field_monster_abilities
      - id: elem_amplify_damage
        type: dict_of__aux_types__string_dict_of__aux_types__string_f4
        if: has_field_elem_amplify_damage
      - id: preload_monster_entity_i_ds
        type: array_of__aux_types__vlq_base128_le_u__length_u
        if: has_field_preload_monster_entity_i_ds
    instances:
      has_field_drop_elem_control_type: # Field №0
        value: (bit_field & 0b0000001) != 0
      has_field_abilities: # Field №1
        value: (bit_field & 0b0000010) != 0
      has_field_avatar_abilities: # Field №2
        value: (bit_field & 0b0000100) != 0
      has_field_team_abilities: # Field №3
        value: (bit_field & 0b0001000) != 0
      has_field_monster_abilities: # Field №4
        value: (bit_field & 0b0010000) != 0
      has_field_elem_amplify_damage: # Field №5
        value: (bit_field & 0b0100000) != 0
      has_field_preload_monster_entity_i_ds: # Field №6
        value: (bit_field & 0b1000000) != 0
      # Base class fields
      common:
        value: base.common
      head_control:
        value: base.head_control
      special_point:
        value: base.special_point
      custom_attack_shape:
        value: base.custom_attack_shape
      model:
        value: base.model
      dither:
        value: base.dither
      global_value:
        value: base.global_value
      entity_tags:
        value: base.entity_tags
