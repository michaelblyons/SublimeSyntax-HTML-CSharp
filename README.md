# [HTML (C#)][pkg]

This project contains
[syntax highlighting][ss-docs]
and completions
in [Sublime Text][st]
for *.cshtml*, *.aspx*, and similar files.
It was originally created for .Net WebForms,
but later expanded
to support Razor syntax as well.

## WebForms

Microsoft's ASP.Net pages with C#
were the first thing
that this package supported.
The syntaxes also work for .Net MVC.
The ASP syntax
that Sublime Text ships with
only supports Visual Basic.

### Current support

#### Highlighting

- Embedded C# script blocks (`<script runat="server">`)
    + The `runat="server"` must immediately follow the tag opening.
- ASP.Net inline expressions
    + Server-side comments (`<%--`)
    + Directives (`<%@`)
    + Output (`<%=`, `<%#`, `<%:`, `<%#:`, `<%$`)
    + Embedded code blocks (`<%`)

#### Functionality

- Hotkey comment/uncomment server-side comments
  (<kbd>Ctrl</kbd>+<kbd>/</kbd> or <kbd>Cmd</kbd>+<kbd>/</kbd>)
- Snippets for `<%`-ish expressions
- Snippets for some directives (Try `page` or `import`)
    + Default attributes are subject to change.
- Snippets may require <kbd>Ctrl</kbd>+<kbd>Space</kbd>,
  depending on your environment.
- Some autocomplete within directives.
- Basic "Open CodeBehind" shortcut for frontend pages.
- Naive "Open Front End" shortcut for codebehind files.

### To-Do (maybe)

- Identify more attributes of directives
- Snippets and/or completions for ASP.Net builtins

### Known issues

- Nothing yet? &#x1f91e;
- File new issues [on GitHub][gh]


## Razor

Microsoft later released
a simplified, less-intrusive frontend templating syntax
that supplanted WebForms.

First version thanks to [Keith Hall][keith].
Rebuilt by Michael Lyons.
Also see [LoneBoco's version][loneboco].

### Current Support

#### Highlighting

- Support for many `@` expressions
- See Known Issues below for exceptions

#### Functionality

- Hotkey comment/uncomment server-side comments
  (<kbd>Ctrl</kbd>+<kbd>/</kbd> or <kbd>Cmd</kbd>+<kbd>/</kbd>)

### Known issues

- Trouble with `@(` in CSS- or JS-embedding HTML attributes
  if the expression contains the tag string delimiter.
- No support for `@bind` attributes.
- Chaining expressions together like `@if`-`for`-etc.
  may require curly braces, even for single commands.
- File new issues [on GitHub][gh]


[pkg]: https://packagecontrol.io/packages/HTML%20(C%23)
[st]: https://www.sublimetext.com/
[ss-docs]: https://www.sublimetext.com/docs/syntax.html
[gh]: https://github.com/michaelblyons/SublimeSyntax-HTML-CSharp
[keith]: https://github.com/keith-hall
[loneboco]: https://github.com/LoneBoco/razor-sublime
