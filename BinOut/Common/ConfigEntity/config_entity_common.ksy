meta:
  id: config_entity_common
  endian: le
  license: GPLv2
  imports:
    - ../../../aux_types
    - disp__config_effect_attach_shape
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: effect_attach_shape
    type: disp__config_effect_attach_shape
    if: has_field_effect_attach_shape
  - id: mass
    type: f4
    if: has_field_mass
  - id: height
    type: f4
    if: has_field_height
  - id: model_height
    type: f4
    if: has_field_model_height
  - id: view_size
    type: f4
    if: has_field_view_size
  - id: shadow_view_size_ratio
    type: f4
    if: has_field_shadow_view_size_ratio
  - id: override_cull_bounds_radius
    type: f4
    if: has_field_override_cull_bounds_radius
  - id: affected_by_world
    type: u1
    if: has_field_affected_by_world
  - id: check_in_surface
    type: u1
    if: has_field_check_in_surface
  - id: scale
    type: f4
    if: has_field_scale
  - id: disable_tick_distance
    type: f4
    if: has_field_disable_tick_distance
  - id: force_pause_tick_distance
    type: f4
    if: has_field_force_pause_tick_distance
  - id: should_pause_animator_before_ready
    type: u1
    if: has_field_should_pause_animator_before_ready
  - id: can_trigger_element_reaction_text
    type: u1
    if: has_field_can_trigger_element_reaction_text
  - id: use_grass_displacement
    type: u1
    if: has_field_use_grass_displacement
  - id: mute_element_stick_ui
    type: u1
    if: has_field_mute_element_stick_ui
  - id: has_after_image
    type: u1
    if: has_field_has_after_image
  - id: use_dynamic_bone
    type: u1
    if: has_field_use_dynamic_bone
  - id: enable_crash_damage
    type: u1
    if: has_field_enable_crash_damage
  - id: clear_animator_on_set_light_deactive
    type: u1
    if: has_field_clear_animator_on_set_light_deactive
  - id: clear_ai_on_set_light_deactive
    type: u1
    if: has_field_clear_ai_on_set_light_deactive
  - id: use_final_ik
    type: u1
    if: has_field_use_final_ik
  - id: element_reaction_scale
    type: f4
    if: has_field_element_reaction_scale
  - id: charge_bar_height_offset
    type: f4
    if: has_field_charge_bar_height_offset
instances:
  has_field_effect_attach_shape: # Field №0
    value: (bit_field.value & 0b000000000000000000000001) != 0
  has_field_mass: # Field №1
    value: (bit_field.value & 0b000000000000000000000010) != 0
  has_field_height: # Field №2
    value: (bit_field.value & 0b000000000000000000000100) != 0
  has_field_model_height: # Field №3
    value: (bit_field.value & 0b000000000000000000001000) != 0
  has_field_view_size: # Field №4
    value: (bit_field.value & 0b000000000000000000010000) != 0
  has_field_shadow_view_size_ratio: # Field №5
    value: (bit_field.value & 0b000000000000000000100000) != 0
  has_field_override_cull_bounds_radius: # Field №6
    value: (bit_field.value & 0b000000000000000001000000) != 0
  has_field_affected_by_world: # Field №7
    value: (bit_field.value & 0b000000000000000010000000) != 0
  has_field_check_in_surface: # Field №8
    value: (bit_field.value & 0b000000000000000100000000) != 0
  has_field_scale: # Field №9
    value: (bit_field.value & 0b000000000000001000000000) != 0
  has_field_disable_tick_distance: # Field №10
    value: (bit_field.value & 0b000000000000010000000000) != 0
  has_field_force_pause_tick_distance: # Field №11
    value: (bit_field.value & 0b000000000000100000000000) != 0
  has_field_should_pause_animator_before_ready: # Field №12
    value: (bit_field.value & 0b000000000001000000000000) != 0
  has_field_can_trigger_element_reaction_text: # Field №13
    value: (bit_field.value & 0b000000000010000000000000) != 0
  has_field_use_grass_displacement: # Field №14
    value: (bit_field.value & 0b000000000100000000000000) != 0
  has_field_mute_element_stick_ui: # Field №15
    value: (bit_field.value & 0b000000001000000000000000) != 0
  has_field_has_after_image: # Field №16
    value: (bit_field.value & 0b000000010000000000000000) != 0
  has_field_use_dynamic_bone: # Field №17
    value: (bit_field.value & 0b000000100000000000000000) != 0
  has_field_enable_crash_damage: # Field №18
    value: (bit_field.value & 0b000001000000000000000000) != 0
  has_field_clear_animator_on_set_light_deactive: # Field №19
    value: (bit_field.value & 0b000010000000000000000000) != 0
  has_field_clear_ai_on_set_light_deactive: # Field №20
    value: (bit_field.value & 0b000100000000000000000000) != 0
  has_field_use_final_ik: # Field №21
    value: (bit_field.value & 0b001000000000000000000000) != 0
  has_field_element_reaction_scale: # Field №22
    value: (bit_field.value & 0b010000000000000000000000) != 0
  has_field_charge_bar_height_offset: # Field №23
    value: (bit_field.value & 0b100000000000000000000000) != 0
