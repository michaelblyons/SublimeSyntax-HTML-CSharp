# [HTML (C#)][pkg]

[Sublime Text][st] [syntax highlighting][ss-docs] for `.cshtml`, `.aspx`, and similar files.

## WebForms

The old ASP.Net style pages that necessitated creation of this package. Post-Visual Basic ASP, but pre-Razor.

### Current support

#### Highlighting

- Embedded C# (`<script runat="server">`)
    + The `runat="server"` must immediately follow the tag opening.
- `<%` expressions (including `<%=`, `<%#`, `<%:`, `<%$`, `<%--`)

#### Functionality

- Hotkey comment/uncomment server-side comments (<kbd>Ctrl</kbd>+<kbd>/</kbd> or <kbd>Cmd</kbd>+<kbd>/</kbd>)

- Snippets for `<%`-ish expressions
- Snippets for some directives (Try `page` or `import`)
    + Default attributes are subject to change.
- Snippets may require <kbd>Ctrl</kbd>+<kbd>space</kbd>, depending on your environment.
- Some autocomplete within directives.
- Basic "Open `CodeBehind`" shortcut for frontend pages.

### Future support (maybe)

- Identify more attributes of directives
- Autocomplete ASP builtins

### Known issues

- Code blocks in CSS and JavaScript attributes that contain the opening attribute delimiter are prematurely terminated.

    ```
    <p style="color: <%= "red" %>" ></p>
    <p onclick="<%= "alert('hi!')" %>"></p>
    ```


## Razor

The simplified, less-intrusive frontend templating syntax that supplanted WebForms.

A huge thank-you to [@keith-hall][keith] for his work on this.

### Current Support

#### Highlighting

The highlighting is not exhaustive, nor is it perfect. Expect some problems.

#### Functionality

- Hotkey comment/uncomment server-side comments (<kbd>Ctrl</kbd>+<kbd>/</kbd> or <kbd>Cmd</kbd>+<kbd>/</kbd>)


[pkg]: https://packagecontrol.io/packages/HTML%20(C%23)
[st]: https://www.sublimetext.com/
[ss-docs]: https://www.sublimetext.com/docs/syntax.html
[keith]: https://github.com/keith-hall
