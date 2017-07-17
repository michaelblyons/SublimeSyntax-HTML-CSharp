// SYNTAX TEST "Packages/HTML-C#/HTML-C#.sublime-syntax"

<%@ Page Debug="true" Title="" AutoEventWireup="true" Inherits="System.Web.UI.Page" %>
// <-                 punctuation.section.embedded.begin.cshtml
//  ^^^^              constant.language.processing-directive.cshtml
//       ^^^^^        entity.other.attribute-name.cshtml
//            ^       punctuation.separator.key-value.cshtml
//             ^^^^^^ string.quoted.double.cshtml
//             ^      punctuation.definition.string.begin.cshtml
//                  ^ punctuation.definition.string.end.cshtml
//                    ^^^^^    entity.other.attribute-name.cshtml
//                         ^   punctuation.separator.key-value.cshtml
//                          ^^ string.quoted.double.cshtml
//                          ^  punctuation.definition.string.begin.cshtml
//                           ^ punctuation.definition.string.end.cshtml
<%@ Register TagPrefix="my" Namespace="Foo.Bar" Assembly="Solution.LinkLibrary" %>
// <-                 punctuation.section.embedded.begin.cshtml
//  ^^^^^^^^          constant.language.processing-directive.cshtml
//                                              ^^^^^^^^         entity.other.attribute-name.cshtml - constant.language.processing-directive.cshtml
//                                                         ^^^^  string.quoted.double.cshtml

<script runat="server">
// ^^^^                   entity.name.tag.script.html - source.cs.embedded.html
//      ^^^^^             constant.language.processing-directive.cshtml
//            ^^^^^^^^    string.quoted.double.cshtml
//            ^           punctuation.definition.string.begin.cshtml
//                   ^    punctuation.definition.string.end.cshtml
//                      ^ source.cs.embedded.html
    var variable = "value";
    // <- source.cs.embedded.html
    var url = "http://example.com";
    var bullion = true;

    protected void Page_Load(object sender, EventArgs args)
    // ^^^^^^ storage.modifier.access
    //        ^^^^ storage.type
    //             ^^^^^^^^^ entity.name.function
    {
        var foo = "bar";
        for(int i = 0; i < 10; i++)
        {
            foo += foo;
        }
    }
</script>
// ^^^^^^^^^ - source.cs.embedded.html

<!DOCTYPE html>
<html>
<head>
    <title>C# HTML</title>
    <script type="text/javascript" src="foo.js"></script>
    <script type="text/javascript">
        var foo = "bar";
        //  ^^^ source.js.embedded.html variable.other.readwrite.js - source.cs.embedded.html
        for(var i = 0; i < 10; i++)
        {
            foo += foo;
        }
    </script>
    //       ^^^ - source.js.embedded.html source.cs.embedded.html
</head>
<body>
    <my:Bar runat="server" />

    <% if(3 > 10)
    // <-         punctuation.section.embedded.begin.cshtml - source.cs.embedded.html
    // ^^^^^^^^^^ source.cs.embedded.html
        { %>
    //  ^         punctuation.section.block.begin
    //    ^^      punctuation.section.embedded.end.cshtml
    //    ^^^^^   - source.cs.embedded.html
    <p>Baz</p>
    <% } %>
    // ^          source.cs.embedded.html
    //     ^^^    - source.cs.embedded.html

    <a href="<%= bullion ? url : "http://other.com" %>">link</a>
    // ^^^^       entity.other.attribute-name.html - source.cs.embedded.html
    //       ^^^  punctuation.section.embedded.begin.cshtml - source.cs.embedded.html
    //          ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      source.cs.embedded.html
    //                            ^^^^^^^^^^^^^^^^        string.quoted.double.cs
    //                                              ^^^^^ - source.cs.embedded.html

    <p><%= variable %></p>
    // ^^^                 punctuation.section.embedded.begin.cshtml
    //    ^^^^^^^^^^       source.cs.embedded.html
    //              ^^     punctuation.section.embedded.end.cshtml
    //              ^^^^^^ - source.cs.embedded.html
</body>
</html>