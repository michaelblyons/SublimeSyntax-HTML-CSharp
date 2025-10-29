// SYNTAX TEST "Packages/HTML (C#)/WebForms/ashx.sublime-syntax"

<%@ WebHandler Language="C#" Class="Handler" %>
//^^^^^^^^^^^^ meta.block.processing-directive.cshtml
//^ punctuation.section.embedded.begin.cshtml
//  ^^^^^^^^^^ meta.block.processing-directive.contents.type.cshtml constant.language.processing-directive.type.cshtml entity.name.class.cs
//            ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.block.processing-directive.contents.type.cshtml
//             ^^^^^^^^ entity.other.attribute-name.cshtml
//                     ^ punctuation.separator.key-value.cshtml
//                      ^^^^ string.quoted.double.cshtml
//                      ^ punctuation.definition.string.begin.cshtml
//                         ^ punctuation.definition.string.end.cshtml
//                           ^^^^^ entity.other.attribute-name.cshtml
//                                ^ punctuation.separator.key-value.cshtml
//                                 ^^^^^^^^^ string.quoted.double.cshtml
//                                 ^ punctuation.definition.string.begin.cshtml
//                                         ^ punctuation.definition.string.end.cshtml
//                                           ^^ punctuation.section.embedded.end.cshtml

using System;
using System.Web;
//^^^ keyword.control.import.cs
//    ^^^^^^^^^^ meta.path.cs
//          ^ punctuation.separator.namespace.cs
//              ^ punctuation.terminator.statement.cs

public class Handler : IHttpHandler
//^^^^ storage.modifier.access.cs
//     ^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.cs
//     ^^^^^ keyword.declaration.class.cs
//           ^^^^^^^ entity.name.class.cs
//                   ^ punctuation.separator.type.cs
//                     ^^^^^^^^^^^^ entity.other.inherited-class.cs
{
    public void ProcessRequest(HttpContext context)
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs
//  ^^^^^^ storage.modifier.access.cs
//         ^^^^ storage.type.cs
//              ^^^^^^^^^^^^^^ meta.method.cs entity.name.function.cs
//                            ^^^^^^^^^^^^^^^^^^^^^ meta.method.parameters.cs
//                            ^ punctuation.section.parameters.begin.cs
//                             ^^^^^^^^^^^ support.type.cs
//                                         ^^^^^^^ variable.parameter.cs
//                                                ^ punctuation.section.parameters.end.cs
    {
        context.Response.ContentType = "text/plain";
        context.Response.Write("Hello World");
//^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^ meta.class.body.cs meta.block.cs meta.method.body.cs meta.block.cs
//      ^^^^^^^ variable.other.cs
//             ^ punctuation.accessor.dot.cs
//              ^^^^^^^^ variable.other.cs
//                      ^ punctuation.accessor.dot.cs
//                       ^^^^^^^^^^^^^^^^^^^^ meta.function-call.cs
//                       ^^^^^ variable.function.cs
//                            ^^^^^^^^^^^^^^^ meta.group.cs
//                            ^ punctuation.section.group.begin.cs
//                             ^^^^^^^^^^^^^ meta.string.cs string.quoted.double.cs
//                             ^ punctuation.definition.string.begin.cs
//                                         ^ punctuation.definition.string.end.cs
//                                          ^ punctuation.section.group.end.cs
//                                           ^ punctuation.terminator.statement.cs
    }

    public bool IsReusable
    {
        get
        {
            return false;
        }
    }
}
