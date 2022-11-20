meta:
  id: watcher_system_mixin
  endian: le
  license: GPLv2
  imports:
    - ../config_ability_mixin
    - ../Common/array_of__disp__config_ability_predicate__length_u
    - ../../../../EnumType/enum__watcher_system_listen_type
    - ../../../../EnumType/enum__watcher_system_mixin_type
    - ../../../../aux_types
seq:
  - id: base
    type: config_ability_mixin
  - id: bit_field
    type: u1
  - id: watcher_id
    type: aux_types::vlq_base128_le_u
    if: has_field_watcher_id
  - id: mixin_type
    type: enum__watcher_system_mixin_type
    if: has_field_mixin_type
  - id: listen_entity_type
    type: enum__watcher_system_listen_type
    if: has_field_listen_entity_type
  - id: listen_state_id
    type: aux_types::string
    if: has_field_listen_state_id
  - id: predicates
    type: array_of__disp__config_ability_predicate__length_u
    if: has_field_predicates
instances:
  has_field_watcher_id: # Field №0
    value: (bit_field & 0b00001) != 0
  has_field_mixin_type: # Field №1
    value: (bit_field & 0b00010) != 0
  has_field_listen_entity_type: # Field №2
    value: (bit_field & 0b00100) != 0
  has_field_listen_state_id: # Field №3
    value: (bit_field & 0b01000) != 0
  has_field_predicates: # Field №4
    value: (bit_field & 0b10000) != 0
  # Base class fields
  is_unique:
    value: base.is_unique
