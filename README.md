# HTML (C#)

[Sublime Text 3][st3] [syntax highlighting][ss-docs] for `.cshtml`, `.aspx`, and similar files.

### Current support for:

- Blocks of `<script runat="server">`
- Blocks of `<%` (including `<%=`, `<%#`, `<%:`, `<%--`)

### Future support (maybe) for:

- Razor syntax

### Known issues:

- "Goto Anything" support is poor.

- Control structures in code blocks separated by HTML are not scoped correctly. For example, the `}` below does not know that it is a `punctuation.section.block.end.source.cs`, even though it is matched to the `{` above.

      ```asp
      <% if(condition){ %>
        <p>show me</p>
      <% } %>
      ```

- C# highlighting is only as good as the core C# definition.


[st3]: https://www.sublimetext.com/
[ss-docs]: https://www.sublimetext.com/docs/3/syntax.html