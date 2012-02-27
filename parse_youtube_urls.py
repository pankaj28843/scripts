
# -*- coding: utf-8 -*-

from BeautifulSoup import BeautifulSoup
input_file = file('input.txt')
soup = BeautifulSoup(input_file.read())
for a in soup.findAll('a'):
    if 'watch?v=' in a['href']:
        print 'http://www.youtube.com'+a['href']


