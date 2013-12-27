#!/usr/bin/env python
# -*- coding: utf-8 -*- #
from __future__ import unicode_literals

AUTHOR = u'Effective Altruism Finland'
SITENAME = u'Effective Altruism Finland'
SITEURL = 'http://blog.altruismi.fi'

RELATIVE_URLS = True

TIMEZONE = 'Europe/Helsinki'
DEFAULT_LANG = u'fi'

THEME = "theme"

# Feed generation is usually not desired when developing
FEED_ALL_ATOM = None
FEED_ALL_RSS = None
CATEGORY_FEED_ATOM = None
TRANSLATION_FEED_ATOM = None

ARTICLE_URL = 'posts/{date:%Y}/{date:%m}/{slug}.html'
ARTICLE_SAVE_AS = 'posts/{date:%Y}/{date:%m}/{slug}.html'

STATIC_PATHS = ["robots.txt",]

SUMMARY_MAX_LENGTH = 30

CSS_FILE = "main.css"

DELETE_OUTPUT_DIRECTORY = True

DEFAULT_PAGINATION = False


