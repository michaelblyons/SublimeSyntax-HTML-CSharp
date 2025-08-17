<%-- SYNTAX TEST "Packages/HTML (C#)/WebForms/aspx.sublime-syntax" --%>

<%@ Page Debug="true" Title="" AutoEventWireup="true" Inherits="System.Web.UI.Page" %>
<%-- <-                 punctuation.section.embedded.begin --%>
<%--^^^^              constant.language.processing-directive entity.name.class.cs --%>
<%--     ^^^^^        entity.other.attribute-name --%>
<%--          ^       punctuation.separator.key-value --%>
<%--           ^^^^^^ string.quoted.double --%>
<%--           ^      punctuation.definition.string.begin --%>
<%--                ^ punctuation.definition.string.end --%>
<%--                  ^^^^^    entity.other.attribute-name --%>
<%--                       ^   punctuation.separator.key-value --%>
<%--                        ^^ string.quoted.double --%>
<%--                        ^  punctuation.definition.string.begin --%>
<%--                         ^ punctuation.definition.string.end --%>

<%@ Import Namespace="System.Net" %>
<%-- <-                 punctuation.section.embedded.begin --%>
<%--^^^^^^            constant.language.processing-directive --%>
<%--       ^^^^^^^^^  entity.other.attribute-name --%>
<%--                ^ punctuation.separator.key-value --%>
<%--                 ^^^^^^^^^^^^    string.quoted.double --%>
<%--                 ^               punctuation.definition.string.begin --%>
<%--                  ^^^^^^^^^^     meta.path.cs --%>
<%--                            ^    punctuation.definition.string.end --%>
<%--                              ^^ punctuation.section.embedded.end --%>

<%@ Register TagPrefix="my" Namespace="Foo.Bar" Assembly="Solution.LinkLibrary" %>
<%-- <-                 punctuation.section.embedded.begin --%>
<%--^^^^^^^^          constant.language.processing-directive --%>
<%--                                            ^^^^^^^^         entity.other.attribute-name - constant.language.processing-directive --%>
<%--                                                      ^^^^  string.quoted.double --%>

<%@ Implements Interface="IFooPage" %>
<%--^^^^^^^^^^                     constant.language.processing-directive --%>
<%--           ^^^^^^^^^           entity.other.attribute-name --%>
<%--                      ^^^^^^^^ entity.other.inherited-class.cs --%>

<%@ OutputCache Duration="120" VaryByControl="ControlName" NoStore="true" %>
<%--^^^^^^^^^^^               constant.language.processing-directive.caching --%>
<%--            ^^^^^^^^      entity.other.attribute-name --%>
<%--                      ^^^ constant.numeric.integer
<%--                                                                ^^^^ constant.language.boolean --%>

<%@ Foo="bar" %>
<%--^^^      entity.other.attribute-name --%>
<%--     ^^^ string.quoted.double --%>

<script runat="server" language="C#">
<%--^^^                   entity.name.tag.script.html - source.cs.embedded.html --%>
<%--    ^^^^^             constant.language.processing-directive.cshtml --%>
<%--          ^^^^^^^^    string.quoted.double.cshtml --%>
<%--          ^           punctuation.definition.string.begin.cshtml --%>
<%--                 ^    punctuation.definition.string.end.cshtml --%>
<%--                  ^^^^^^^^^^^^^^^  - source.cs.embedded.html --%>
<%--                   ^^^^^^^^        entity.other.attribute-name --%>
<%--                           ^       punctuation.separator.key-value --%>
<%--                            ^^^^   string.quoted.double --%>
<%--                            ^      punctuation.definition.string.begin --%>
<%--                               ^   punctuation.definition.string.end --%>
<%--                                 ^ source.cs.embedded.html --%>
    // comment
    var variable = "value";
<%-- <- source.cs.embedded.html --%>
    ; // another comment to un-break the "operator" expectation
    var url = "http://example.com";
    var bullion = true;

    protected void Page_Load(object sender, EventArgs args)
<%-- ^^^^^^^^ storage.modifier.access --%>
<%--          ^^^^ storage.type --%>
<%--               ^^^^^^^^^ entity.name.function --%>
    {
        var foo = "bar";
        for(int i = 0; i < 10; i++)
        {
            foo += foo;
        }
    }
   </script>
<%-- <- source.cs.embedded.html --%>
<%--^         punctuation.definition.tag.begin.html --%>
<%-- ^^^^^^   entity.name.tag.html --%>
<%--       ^  punctuation.definition.tag.end.html --%>
<%-- ^^^^^^^^^^ - source.cs.embedded.html --%>

<!DOCTYPE html>
<html>
<head>
    <title>C# HTML</title>
    <script type="text/javascript" src="foo.js"></script>
    <script type="text/javascript">
        var foo = "bar";
<%--        ^^^ source.js.embedded.html variable.other.readwrite.js - source.cs.embedded.html --%>
        for(var i = 0; i < 10; i++)
        {
            foo += foo;
        }
    </script>
<%--       ^^^ - source.js.embedded.html source.cs.embedded.html --%>
</head>
<body>
    <my:Bar runat="server" />

    <% %>
<%--^^^^^ meta.embedded.cs --%>
<%--^^ punctuation.section.embedded.begin.cs-webforms --%>
<%--  ^ source.cs.embedded.html --%>
<%--   ^^ punctuation.section.embedded.end.cs-webforms - source --%>

    <% } %>
<%--^^^^^^^ meta.embedded.cs --%>
<%--^^ punctuation.section.embedded.begin.cs-webforms --%>
<%--  ^^^ source.cs.embedded.html --%>
<%--   ^ invalid.illegal.stray.brace.cs --%>
<%--     ^^ punctuation.section.embedded.end.cs-webforms - source --%>

    <% if(3 > 10)
<%--^^         punctuation.section.embedded.begin - source.cs --%>
<%--   ^^^^^^^^^^ source.cs.embedded.html --%>
        { %>
<%--^^^^^^ meta.embedded.cs source.cs.embedded.html --%>
<%--    ^ punctuation.section.block.begin.cs --%>
<%--      ^^ text.html.cs.webforms meta.embedded.cs punctuation.section.embedded.end.cs-webforms - source --%>
    <p>Baz</p>
    <% } else { %>
<%--^^ text.html.cs.webforms --%>
<%--^^ meta.embedded.cs punctuation.section.embedded.begin.cs-webforms --%>
<%--  ^^^^^^^^^^ meta.embedded.cs source.cs.embedded.html --%>
<%--   ^ punctuation.section.block.end.cs --%>
<%--     ^^^^^ keyword.control.conditional.else.cs --%>
<%--          ^^ meta.block.cs --%>
<%--          ^ punctuation.section.block.begin.cs --%>
<%--            ^^ text.html.cs.webforms meta.embedded.cs punctuation.section.embedded.end.cs-webforms - source --%>
    <p>Biff</p>
    <% } %>
<%--^^ text.html.cs.webforms --%>
<%--^^ meta.embedded.cs punctuation.section.embedded.begin.cs-webforms --%>
<%--  ^^^^^ meta.embedded.cs --%>
<%--  ^^^ source.cs.embedded.html --%>
<%--  ^^ meta.block.cs --%>
<%--   ^ punctuation.section.block.end.cs --%>
<%--     ^^ punctuation.section.embedded.end.cs-webforms - source --%>

    <p><%: variable %></p>
<%--   ^^^                 punctuation.section.embedded.begin --%>
<%--      ^^^^^^^^^^       source.cs.embedded.html --%>
<%--                ^^     punctuation.section.embedded.end --%>
<%--                ^^^^^^ - source.cs.embedded.html --%>

    <a href="<%= bullion ? url : "http://other.com" %>">link</a>
<%--   ^^^^       entity.other.attribute-name - source.cs --%>
<%--         ^^^  punctuation.section.embedded.begin - source.cs --%>
<%--            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^      source.cs.embedded --%>
<%--                              ^^^^^^^^^^^^^^^^        string.quoted.double.cs --%>
<%--                                                ^^^^^ - source.cs --%>

    <![CDATA[<%= variable %>]]>
<%--         ^^^                 punctuation.section.embedded.begin --%>
<%--            ^^^^^^^^^^       source.cs.embedded.html --%>
<%--                      ^^     punctuation.section.embedded.end --%>
<%--                      ^^^^^^ - source.cs.embedded.html --%>

    <p><%= variable %></p>
<%--   ^^^                 punctuation.section.embedded.begin --%>
<%--      ^^^^^^^^^^       source.cs.embedded.html --%>
<%--                ^^     punctuation.section.embedded.end --%>
<%--                ^^^^^^ - source.cs.embedded.html --%>
</body>
</html>
