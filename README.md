# [HTML (C#)][pkg]

[Sublime Text 3][st3] [syntax highlighting][ss-docs] for `.cshtml`, `.aspx`, and similar files.

## Current support

### Highlighting

- Embedded C# (`<script runat="server">`)
    + The `runat="server"` must immediately follow the tag opening.
- `<%` expressions (including `<%=`, `<%#`, `<%:`, `<%$`, `<%--`)

### Functionality

- Hotkey comment/uncomment server-side comments (<kbd>Ctrl</kbd>+<kbd>/</kbd> or <kbd>Cmd</kbd>+<kbd>/</kbd>)

- Snippets for `<%` expressions (Try typing `exp`)
    + These are subject to change.
- Snippets for some directives (Try `page` or `import`)
    + Default attributes are subject to change.
- Snippets may require <kbd>Ctrl</kbd>+<kbd>space</kbd>, depending on your environment.
- Some autocomplete within directives.

### Razor syntax

Huge thank-you to @keith-hall for this!

## Future support (maybe)

- Identify more attributes of directives
- Autocomplete ASP builtins

## Known issues:

- "Goto Anything" support is poor.

- No recognition of excluded scopes to return to HTML. In the snippet below, the C# scope ends immediately after `"bar`.

    ```
    <%
      var foo = "bar%>";
    %>
    ```

- Javascript does not always recognize that `Response.Write` output is coming. The `)` is marked as invalid and the conditional scopes are never terminated.

    ```
    <script type="text/javascript">
    if (true && <%= list.Any() %>) {
       doStuff();
    }
    </script>
    ```

[pkg]: https://packagecontrol.io/packages/HTML%20(C%23)
[st3]: https://www.sublimetext.com/
[ss-docs]: https://www.sublimetext.com/docs/3/syntax.html
