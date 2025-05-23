AUTHOR = 'André Caldas'
SITENAME = 'Sem Pra Quê'
SITEURL = "" # Ovewritten by publishconf.py

THEME = "themes/pelican-themes/Peli-Kiera"
#THEME = "themes/pelican-themes/cebong"
THEME_TEMPLATES_OVERRIDES = [f"templates/{THEME}", "templates/"]
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

# Uncomment following line if you want document-relative URLs when developing
# RELATIVE_URLS = True
