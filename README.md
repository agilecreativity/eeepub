## EeePub (Temporary Extension)

### Notes & Remarks

Patch to the original gem that I need for my [source2epub](https://rubygems.org/gems/source2epub) gem to work.
This gem will be deprecated as soon as the [rubyzip bug](https://github.com/jugyo/eeepub/pull/34) is fixed/merged by
the original author. This is my temporary solution to make my gem work so that
I can use the gem without the need to manually install my own fork first via Github.

I still can't find the way to make use of the original gem name in the gemspec.

EeePub
======

EeePub is a Ruby ePub generator.

Usage
-------

    epub = EeePub.make do
      title       'sample'
      creator     'jugyo'
      publisher   'jugyo.org'
      date        '2010-05-06'
      identifier  'http://example.com/book/foo', :scheme => 'URL'
      uid         'http://example.com/book/foo'

      files ['/path/to/foo.html', '/path/to/bar.html'] # or files [{'/path/to/foo.html' => 'dest/dir'}, {'/path/to/bar.html' => 'dest/dir'}]
      nav [
        {:label => '1. foo', :content => 'foo.html', :nav => [
          {:label => '1.1 foo-1', :content => 'foo.html#foo-1'}
        ]},
        {:label => '1. bar', :content => 'bar.html'}
      ]
    end
    epub.save('sample.epub')

### Low Level API

Create NCX:

    EeePub::NCX.new(
      :uid => 'xxxx',
      :title => 'sample',
      :nav => [
        {:label => '1. foo', :content => 'foo.html'},
        {:label => '2. bar', :content => 'bar.html'}
      ]
    ).save(File.join('sample', 'toc.ncx'))

Create OPF:

    EeePub::OPF.new(
      :title => 'sample',
      :identifier => {:value => '0-0000000-0-0', :scheme => 'ISBN'},
      :manifest => ['foo.html', 'bar.html'],
      :ncx => 'toc.ncx'
    ).save(File.join('sample', 'content.opf'))

Create OCF and ePub file:

    EeePub::OCF.new(
      :dir => 'sample',
      :container => 'content.opf'
    ).save('sample.epub')

Install
-------

    gem install eeepub

Requirements
-------

* builder
* eBook Reader :)

Links
-------

* Documentation: [http://yardoc.org/docs/jugyo-eeepub](http://yardoc.org/docs/jugyo-eeepub)
* Source code: [http://github.com/jugyo/eeepub](http://github.com/jugyo/eeepub)

Copyright
-------

Copyright (c) 2010 jugyo. See LICENSE for details.
