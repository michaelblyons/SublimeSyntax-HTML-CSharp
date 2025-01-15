import sublime
import sublime_plugin
from re import search
from os.path import isfile


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


class OpenFrontEndFromCodeFileCommand(sublime_plugin.TextCommand):
    """Naively open foo.ascx from foo.ascx.cs"""

    def is_enabled(self):
        filename = self.view.file_name()
        if ((filename
             and self.view.match_selector(0, 'source.cs')
             and search(r'\.(?:as[pc]x|master)\.cs$', filename)
             and isfile(filename[:-3]))):
            return True
        return False

    def run(self, edit):
        self.view.window().open_file(self.view.file_name()[:-3])
