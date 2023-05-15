# File Copy-Paste (name in progress)

I developed this because I often struggle with re-typing the path to do a copy, or remembering what exactly I need to copy from place to place, or want to paste something in multiple places.
Futhermore, when working with multiple windows (eg, in tmux or some other multiplexer), I often just want to copy a file somewhere, and paste it somewhere else.

This solves these issue by copying the desired file path/arguments to an intermediate file, and then when pasting, it will carry out the actual copy command from that file's arguments.

It's a work in progress, and I might look into developing further operations, such as cut (move), forward (move and link), and safemove and safeforward (copy before removing source).
