meta:
  id: config_effect_data
  endian: le
  license: GPLv2
  imports:
    - ../../aux_types
    - ../../ArrayType/array_of__aux_types__string__length_u
    - ../../ArrayType/array_of__enum__entity_type__length_u
    - ../../DictType/dict_of__aux_types__string_dict_of__aux_types__string_aux_types__string
    - ../../DictType/dict_of__aux_types__string_aux_types__vlq_base128_le_s
    - ../../EnumType/enum__element_type
    - ../../EnumType/enum__token_force_enqueue_reason
    - config_effect_pool
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: element_view
    type: config_element_view
    if: has_field_element_view
  - id: be_hit
    type: config_be_hit_effect
    if: has_field_be_hit
  - id: recover_energy
    type: array_of__config_recover_energy_effect__length_u
    if: has_field_recover_energy
  - id: effect_pool
    type: config_effect_pool
    if: has_field_effect_pool
  - id: scene_prop_shake_anim
    type: dict_of__aux_types__string_aux_types__string
    if: has_field_scene_prop_shake_anim
  - id: effect_lod
    type: config_effect_lod
    if: has_field_effect_lod
  - id: skip_unindexed_effect_creation
    type: dict_of__aux_types__string_config_skip_unindexed_effect_creation
    if: has_field_skip_unindexed_effect_creation
  - id: token_force_enqueue_map
    type: dict_of__aux_types__string_enum__token_force_enqueue_reason
    if: has_field_token_force_enqueue_map
  - id: token_force_handle_this_frame_array
    type: array_of__aux_types__string__length_u
    if: has_field_token_force_handle_this_frame_array
instances:
  has_field_element_view: # Field №0
    value: (bit_field.value & 0b000000001) != 0
  has_field_be_hit: # Field №1
    value: (bit_field.value & 0b000000010) != 0
  has_field_recover_energy: # Field №2
    value: (bit_field.value & 0b000000100) != 0
  has_field_effect_pool: # Field №3
    value: (bit_field.value & 0b000001000) != 0
  has_field_scene_prop_shake_anim: # Field №4
    value: (bit_field.value & 0b000010000) != 0
  has_field_effect_lod: # Field №5
    value: (bit_field.value & 0b000100000) != 0
  has_field_skip_unindexed_effect_creation: # Field №6
    value: (bit_field.value & 0b001000000) != 0
  has_field_token_force_enqueue_map: # Field №7
    value: (bit_field.value & 0b010000000) != 0
  has_field_token_force_handle_this_frame_array: # Field №8
    value: (bit_field.value & 0b100000000) != 0
types:
  array_of__config_recover_energy_effect__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_recover_energy_effect
        repeat: expr
        repeat-expr: length.value
  config_recover_energy_effect:
    seq:
      - id: bit_field
        type: u1
      - id: element_type
        type: enum__element_type
        if: has_field_element_type
      - id: effects
        type: array_of__config_effect_with_threshold__length_u
        if: has_field_effects
    instances:
      has_field_element_type: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_effects: # Field №1
        value: (bit_field & 0b10) != 0
  array_of__config_effect_with_threshold__length_u:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: data
        type: config_effect_with_threshold
        repeat: expr
        repeat-expr: length.value
  config_effect_with_threshold:
    seq:
      - id: bit_field
        type: u1
      - id: threshold
        type: f4
        if: has_field_threshold
      - id: effect_name
        type: aux_types::string
        if: has_field_effect_name
    instances:
      has_field_threshold: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_effect_name: # Field №1
        value: (bit_field & 0b10) != 0
  config_be_hit_effect:
    seq:
      - id: bit_field
        type: u1
      - id: entity
        type: entity_be_hit_effect
        if: has_field_entity
      - id: scene
        type: scene_be_hit_effect
        if: has_field_scene
    instances:
      has_field_entity: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_scene: # Field №1
        value: (bit_field & 0b10) != 0
  entity_be_hit_effect:
    seq:
      - id: bit_field
        type: u1
      - id: override_by_frozen_state
        type: aux_types::string
        if: has_field_override_by_frozen_state
      - id: override_by_petrifaction_state
        type: aux_types::string
        if: has_field_override_by_petrifaction_state
      - id: override_by_rock_state
        type: aux_types::string
        if: has_field_override_by_rock_state
      - id: override_by_rock_resist_state
        type: aux_types::string
        if: has_field_override_by_rock_resist_state
    instances:
      has_field_override_by_frozen_state: # Field №0
        value: (bit_field & 0b0001) != 0
      has_field_override_by_petrifaction_state: # Field №1
        value: (bit_field & 0b0010) != 0
      has_field_override_by_rock_state: # Field №2
        value: (bit_field & 0b0100) != 0
      has_field_override_by_rock_resist_state: # Field №3
        value: (bit_field & 0b1000) != 0
  scene_be_hit_effect:
    seq:
      - id: bit_field
        type: u1
      - id: hit_scene_effect
        type: dict_of__aux_types__string_dict_of__aux_types__string_aux_types__string
        if: has_field_hit_scene_effect
    instances:
      has_field_hit_scene_effect: # Field №0
        value: (bit_field & 0b1) != 0
  config_element_view:
    seq:
      - id: bit_field
        type: u1
      - id: element_color_index
        type: dict_of__aux_types__string_aux_types__vlq_base128_le_s
        if: has_field_element_color_index
      - id: terrain_grass_color
        type: aux_types::vlq_base128_le_u
        if: has_field_terrain_grass_color
    instances:
      has_field_element_color_index: # Field №0
        value: (bit_field & 0b01) != 0
      has_field_terrain_grass_color: # Field №1
        value: (bit_field & 0b10) != 0
  config_effect_lod:
    seq:
      - id: bit_field
        type: u1
      - id: use_distance_lod_entity_types
        type: array_of__enum__entity_type__length_u
        if: has_field_use_distance_lod_entity_types
    instances:
      has_field_use_distance_lod_entity_types: # Field №0
        value: (bit_field & 0b1) != 0
  dict_of__aux_types__string_config_skip_unindexed_effect_creation:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_skip_unindexed_effect_creation
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_skip_unindexed_effect_creation:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_skip_unindexed_effect_creation
  config_skip_unindexed_effect_creation:
    seq:
      - id: bit_field
        type: u1
      - id: skip_unindexed_effect_creation_by_distance
        type: config_skip_unindexed_effect_creation_by_distance
        if: has_field_skip_unindexed_effect_creation_by_distance
    instances:
      has_field_skip_unindexed_effect_creation_by_distance: # Field №0
        value: (bit_field & 0b1) != 0
  config_skip_unindexed_effect_creation_by_distance:
    seq:
      - id: bit_field
        type: u1
      - id: distance
        type: f4
        if: has_field_distance
    instances:
      has_field_distance: # Field №0
        value: (bit_field & 0b1) != 0
  dict_of__aux_types__string_enum__token_force_enqueue_reason:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_enum__token_force_enqueue_reason
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_enum__token_force_enqueue_reason:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: enum__token_force_enqueue_reason
