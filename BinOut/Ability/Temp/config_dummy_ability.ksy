meta:
  id: config_dummy_ability
  endian: le
  license: GLP
  imports:
    - config_ability
seq:
  - id: base
    type: config_ability
instances:
  # Base class fields
  ability_name:
    value: base.ability_name
  ability_mixins:
    value: base.ability_mixins
  ability_specials:
    value: base.ability_specials
  modifiers:
    value: base.modifiers
  default_modifier:
    value: base.default_modifier
  on_added:
    value: base.on_added
  on_removed:
    value: base.on_removed
  on_ability_start:
    value: base.on_ability_start
  on_kill:
    value: base.on_kill
  on_field_enter:
    value: base.on_field_enter
  on_field_exit:
    value: base.on_field_exit
  on_attach:
    value: base.on_attach
  on_detach:
    value: base.on_detach
  on_avatar_in:
    value: base.on_avatar_in
  on_avatar_out:
    value: base.on_avatar_out
  on_vehicle_in:
    value: base.on_vehicle_in
  on_vehicle_out:
    value: base.on_vehicle_out
  on_trigger_avatar_ray:
    value: base.on_trigger_avatar_ray
  on_zone_enter:
    value: base.on_zone_enter
  on_zone_exit:
    value: base.on_zone_exit
  is_dynamic_ability:
    value: base.is_dynamic_ability
  ability_defined_properties:
    value: base.ability_defined_properties
