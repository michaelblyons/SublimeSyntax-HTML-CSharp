import sublime
import sublime_plugin


class OpenCodeFileFromFrontEndCommand(sublime_plugin.TextCommand):
    """Open foo.ascx.cs from foo.ascx"""

    def is_enabled(self):
        if ((self.view.match_selector(0, 'text.html.cs.webforms')
             and self.view.find_by_selector('meta.path.codefile'))):
            return True
        return False

    def run(self, edit):
        region = self.view.find_by_selector('meta.path.codefile')[0]
        codefile = self.view.substr(region)
        self.view.window().open_file(str(codefile))
