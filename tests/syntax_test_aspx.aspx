// SYNTAX TEST "Packages/C# HTML/HTML-C#.sublime-syntax"
<%@ Page Debug="true" AutoEventWireup="true" Inherits="System.Web.UI.Page" %>
// <- punctuation.section.embedded.begin.cshtml
//  ^^^^ constant.language.processing-directive.cshtml
<%@ Register TagPrefix="my" Namespace="Foo.Bar" Assembly="Solution.LinkLibrary" %>

<script runat="server">
// ^^^^ source.cs.embedded.html entity.name.tag.script.html
//      ^^^^^ constant.language.processing-directive.cshtml

    var variable = "value";
    var url = "http://example.com";
    var bullion = true;

    protected void Page_Load(object sender, EventArgs args)
    // ^^^^^^ storage.modifier.source.cs
    //        ^^^^ storage.type.source.cs
    //             ^^^^^^^^^ meta.method.source.cs
    {
        var foo = "bar";
        for(int i = 0; i < 10; i++)
        {
            foo += foo;
        }
    }
</script>

<!DOCTYPE html>
<html>
<head>
    <title>C# HTML</title>
    <script type="text/javascript" src="foo.js"></script>
    <script type="text/javascript">
        var foo = "bar";
        for(var i = 0; i < 10; i++)
        {
            foo += foo;
        }
    </script>
</head>
<body>
    <my:Bar runat="server" />

    <% if(3 > 10)
        { %>
    <p>Baz</p>
    <% } %>

    <a href="<%= bullion ? url : "http://other.com" %>">link</a>

    <p><%= variable %></p>
    
</body>
</html>