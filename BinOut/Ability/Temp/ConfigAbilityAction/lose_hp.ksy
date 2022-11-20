meta:
  id: lose_hp
  endian: le
  license: AGPL-3.0-or-later
  imports:
    - ../config_ability_action
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_action
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: amount
    type: aux_types::dynamic_float
    if: has_field_amount
  - id: amount_by_caster_max_hp_ratio
    type: aux_types::dynamic_float
    if: has_field_amount_by_caster_max_hp_ratio
  - id: amount_by_target_max_hp_ratio
    type: aux_types::dynamic_float
    if: has_field_amount_by_target_max_hp_ratio
  - id: amount_by_target_current_hp_ratio
    type: aux_types::dynamic_float
    if: has_field_amount_by_target_current_hp_ratio
  - id: amount_by_caster_attack_ratio
    type: aux_types::dynamic_float
    if: has_field_amount_by_caster_attack_ratio
  - id: lethal
    type: u1
    if: has_field_lethal
  - id: enable_invincible
    type: u1
    if: has_field_enable_invincible
  - id: enable_lock_hp
    type: u1
    if: has_field_enable_lock_hp
  - id: disable_when_loading
    type: u1
    if: has_field_disable_when_loading
  - id: use_meta
    type: u1
    if: has_field_use_meta
instances:
  has_field_amount: # Field №0
    value: (bit_field.value & 0b0000000001) != 0
  has_field_amount_by_caster_max_hp_ratio: # Field №1
    value: (bit_field.value & 0b0000000010) != 0
  has_field_amount_by_target_max_hp_ratio: # Field №2
    value: (bit_field.value & 0b0000000100) != 0
  has_field_amount_by_target_current_hp_ratio: # Field №3
    value: (bit_field.value & 0b0000001000) != 0
  has_field_amount_by_caster_attack_ratio: # Field №4
    value: (bit_field.value & 0b0000010000) != 0
  has_field_lethal: # Field №5
    value: (bit_field.value & 0b0000100000) != 0
  has_field_enable_invincible: # Field №6
    value: (bit_field.value & 0b0001000000) != 0
  has_field_enable_lock_hp: # Field №7
    value: (bit_field.value & 0b0010000000) != 0
  has_field_disable_when_loading: # Field №8
    value: (bit_field.value & 0b0100000000) != 0
  has_field_use_meta: # Field №9
    value: (bit_field.value & 0b1000000000) != 0
  # Base class fields
  token:
    value: base.token
  target:
    value: base.target
  other_targets:
    value: base.other_targets
  do_off_stage:
    value: base.do_off_stage
  do_after_die:
    value: base.do_after_die
  can_be_handled_on_recover:
    value: base.can_be_handled_on_recover
  mute_remote_action:
    value: base.mute_remote_action
  predicates:
    value: base.predicates
  predicates_foreach:
    value: base.predicates_foreach
