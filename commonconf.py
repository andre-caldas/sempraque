AUTHOR = 'André Caldas'
SITENAME = 'Sem Pra Quê'
SITEURL = "" # Ovewritten by publishconf.py

THEME = "themes/elegant"
#THEME = "themes/pelican-themes/Peli-Kiera"
#THEME = "themes/pelican-themes/cebong"

# Variables for "elegant" theme.
#DIRECT_TEMPLATES = ["index", "tags", "categories", "archives", "search", "404"]

THEME_TEMPLATES_OVERRIDES = [f"templates/{THEME}", "templates/",]
PATH = "content"
STATIC_PATHS = [""]

TIMEZONE = 'America/Sao_Paulo'
DEFAULT_LANG = 'en'

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None
AUTHOR_FEED_ATOM = None
AUTHOR_FEED_RSS = None

# Blogroll
LINKS = (
    ("Pelican", "https://getpelican.com/"),
    ("Jinja2", "https://palletsprojects.com/p/jinja/"),
)

# Social widget
#SOCIAL = (
#    ("You can add links in your config file", "#"),
#    ("Another social link", "#"),
#)

DEFAULT_PAGINATION = 10


#
# Markdown improvements
#
import pymdownx.emoji

TYPOGRIFY = True
TYPOGRIFY_DASHES = 'oldschool'

MARKDOWN = {
    'extensions': [
        'markdown_include.include',
        'pymdownx.arithmatex',
        'pymdownx.emoji',
        'pymdownx.betterem',
        'pymdownx.extra',
    ],
    'extension_configs': {
        'markdown_include.include': {
            'base_path': 'markdown_includes',
        },
        'pymdownx.arithmatex': {
            'generic': False,
            'preview': False,
            'block_syntax': ['begin',],
        },
        'pymdownx.emoji': {
            'emoji_generator': pymdownx.emoji.to_alt,
        },
    }
}

