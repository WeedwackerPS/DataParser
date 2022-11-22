meta:
  id: config_character_audio
  endian: le
  license: GPLv2
  imports:
    - config_entity_audio
seq:
  - id: base
    type: config_entity_audio
instances:
  # Base class fields
  anim_audio:
    value: base.anim_audio
  init_event:
    value: base.init_event
  enable_event:
    value: base.enable_event
  disable_event:
    value: base.disable_event
  destroy_event:
    value: base.destroy_event
