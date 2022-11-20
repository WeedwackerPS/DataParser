meta:
  id: config_ability
  endian: le
  license: GLP
  imports:
    - ../../../aux_types
    - ../../../EnumType/enum__property_type
    - ../../../EnumType/enum__stack_method
    - Common/array_of__disp__config_ability_action__length_u
    - Common/array_of__disp__config_ability_mixin__length_u
    - ../../../DictType/dict_of__aux_types__string_aux_types__dynamic_argument
    - config_ability_modifier
seq:
  - id: bit_field
    type: aux_types::vlq_base128_le_u
  - id: ability_name
    type: aux_types::string
    if: has_field_ability_name
  - id: ability_mixins
    type: array_of__disp__config_ability_mixin__length_u
    if: has_field_ability_mixins
  - id: ability_specials
    type: dict_of__aux_types__string_aux_types__dynamic_argument
    if: has_field_ability_specials
  - id: modifiers
    type: dict_of__aux_types__string_config_ability_modifier
    if: has_field_modifiers
  - id: default_modifier
    type: config_ability_modifier
    if: has_field_default_modifier
  - id: on_added
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_added
  - id: on_removed
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_removed
  - id: on_ability_start
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_ability_start
  - id: on_kill
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_kill
  - id: on_field_enter
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_field_enter
  - id: on_field_exit
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_field_exit
  - id: on_attach
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_attach
  - id: on_detach
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_detach
  - id: on_avatar_in
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_avatar_in
  - id: on_avatar_out
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_avatar_out
  - id: on_vehicle_in
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_vehicle_in
  - id: on_vehicle_out
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_vehicle_out
  - id: on_trigger_avatar_ray
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_trigger_avatar_ray
  - id: on_zone_enter
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_zone_enter
  - id: on_zone_exit
    type: array_of__disp__config_ability_action__length_u
    if: has_field_on_zone_exit
  - id: is_dynamic_ability
    type: u1
    if: has_field_is_dynamic_ability
  - id: ability_defined_properties
    type: dict_of__aux_types__string_config_ability_property_entry
    if: has_field_ability_defined_properties
instances:
  has_field_ability_name: # Field №0
    value: (bit_field.value & 0b0000000000000000000001) != 0
  has_field_ability_mixins: # Field №1
    value: (bit_field.value & 0b0000000000000000000010) != 0
  has_field_ability_specials: # Field №2
    value: (bit_field.value & 0b0000000000000000000100) != 0
  has_field_modifiers: # Field №3
    value: (bit_field.value & 0b0000000000000000001000) != 0
  has_field_default_modifier: # Field №4
    value: (bit_field.value & 0b0000000000000000010000) != 0
  has_field_on_added: # Field №5
    value: (bit_field.value & 0b0000000000000000100000) != 0
  has_field_on_removed: # Field №6
    value: (bit_field.value & 0b0000000000000001000000) != 0
  has_field_on_ability_start: # Field №7
    value: (bit_field.value & 0b0000000000000010000000) != 0
  has_field_on_kill: # Field №8
    value: (bit_field.value & 0b0000000000000100000000) != 0
  has_field_on_field_enter: # Field №9
    value: (bit_field.value & 0b0000000000001000000000) != 0
  has_field_on_field_exit: # Field №10
    value: (bit_field.value & 0b0000000000010000000000) != 0
  has_field_on_attach: # Field №11
    value: (bit_field.value & 0b0000000000100000000000) != 0
  has_field_on_detach: # Field №12
    value: (bit_field.value & 0b0000000001000000000000) != 0
  has_field_on_avatar_in: # Field №13
    value: (bit_field.value & 0b0000000010000000000000) != 0
  has_field_on_avatar_out: # Field №14
    value: (bit_field.value & 0b0000000100000000000000) != 0
  has_field_on_vehicle_in: # Field №15
    value: (bit_field.value & 0b0000001000000000000000) != 0
  has_field_on_vehicle_out: # Field №16
    value: (bit_field.value & 0b0000010000000000000000) != 0
  has_field_on_trigger_avatar_ray: # Field №17
    value: (bit_field.value & 0b0000100000000000000000) != 0
  has_field_on_zone_enter: # Field №18
    value: (bit_field.value & 0b0001000000000000000000) != 0
  has_field_on_zone_exit: # Field №19
    value: (bit_field.value & 0b0010000000000000000000) != 0
  has_field_is_dynamic_ability: # Field №20
    value: (bit_field.value & 0b0100000000000000000000) != 0
  has_field_ability_defined_properties: # Field №21
    value: (bit_field.value & 0b1000000000000000000000) != 0
types:
  dict_of__aux_types__string_config_ability_modifier:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_ability_modifier
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_ability_modifier:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_ability_modifier
  dict_of__aux_types__string_config_ability_property_entry:
    seq:
      - id: length
        type: aux_types::vlq_base128_le_u
      - id: items
        type: kvp_of_aux_types__string_config_ability_property_entry
        repeat: expr
        repeat-expr: length.value
  kvp_of_aux_types__string_config_ability_property_entry:
    seq:
      - id: key
        type: aux_types::string
      - id: value
        type: config_ability_property_entry
  config_ability_property_entry:
    seq:
      - id: bit_field
        type: aux_types::vlq_base128_le_u
      - id: type
        type: enum__property_type
        if: has_field_type
      - id: default_value
        type: f4
        if: has_field_default_value
      - id: ceiling
        type: f4
        if: has_field_ceiling
      - id: floor
        type: f4
        if: has_field_floor
      - id: stacking
        type: enum__stack_method
        if: has_field_stacking
      - id: succeed
        type: u1
        if: has_field_succeed
      - id: use_tag
        type: u1
        if: has_field_use_tag
      - id: limited_tag_ceiling
        type: f4
        if: has_field_limited_tag_ceiling
      - id: limited_tag_floor
        type: f4
        if: has_field_limited_tag_floor
    instances:
      has_field_type: # Field №0
        value: (bit_field.value & 0b000000001) != 0
      has_field_default_value: # Field №1
        value: (bit_field.value & 0b000000010) != 0
      has_field_ceiling: # Field №2
        value: (bit_field.value & 0b000000100) != 0
      has_field_floor: # Field №3
        value: (bit_field.value & 0b000001000) != 0
      has_field_stacking: # Field №4
        value: (bit_field.value & 0b000010000) != 0
      has_field_succeed: # Field №5
        value: (bit_field.value & 0b000100000) != 0
      has_field_use_tag: # Field №6
        value: (bit_field.value & 0b001000000) != 0
      has_field_limited_tag_ceiling: # Field №7
        value: (bit_field.value & 0b010000000) != 0
      has_field_limited_tag_floor: # Field №8
        value: (bit_field.value & 0b100000000) != 0