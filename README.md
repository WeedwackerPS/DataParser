# DataParser
A Parser of a certain anime game's data files (WIP)

The current definitions are based on version 2.2 of the client, and thus, some new definitions and cases might be needed for newer versions

This repository contains kaitai-struct definitions for the BinOutput and Excel types for a certain anime game data files
Due to a [known issue](https://github.com/kaitai-io/kaitai_struct/issues/963) with the kaitai-struct compiler,
depending on your target language, you may have to change the type of m_root to the base class KaitaiStruct in the generated AuxTypes types.

The kaitai definitions target binary files that can be extracted from the blks using [asset studio](https://gitlab.com/RazTools/Studio)
with the help of [this script](https://github.com/RedDango/KLB_Unpacker_Script)
The appropriate type can be figured out using [this asset index mapping](https://github.com/radioegor146/gi-asset-indexes)

# Future Goals
Make a program that can serialize the extracted data to json, or other formats used by private servers and game-related tools

# Contributing
Any help to sort/categorize/make valid .ksy from the remaining unsorted types is welcome. Just be sure to remove those types from the unsorted folders in the same pull request
For anything else feel free to contact us in our [discord](https://discord.gg/XJgJcf6nPf)

# Credits:
  partypooper for the original [KaitaiDumper](https://github.com/partypooperarchive/KaitaiDumper).
  Raz for [asset studio](https://gitlab.com/RazTools/Studio) and the dynamic_* types
  RedDango for the [unpacker script](https://github.com/RedDango/KLB_Unpacker_Script)
  radioegor146 for the [asset index mapping](https://github.com/radioegor146/gi-asset-indexes)
