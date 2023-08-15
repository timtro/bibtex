#!/bin/bash
# vim: foldmethod=marker

# Style arguments {{{
style=('--curly '
         '--numeric'
         '--space=2'
         '--align=0'
         '--duplicates=key,doi,citation'
         '--no-escape'
         '--remove-empty-fields'
         '--sort=year,name'
        )
#
#         '--wrap=80'
# }}}
# Order for field sorting {{{
field_order=('author,'
             'title,'
             'titleaddon,'
             'subtitle,'
             'shorttitle,'
             'booktitle,'
             'editor,'
             'journal,'
             'organization,'
             'edition,'
             'series,'
             'volume,'
             'number,'
             'school,'
             'institution,'
             'doi,'
             'isbn,'
             'issn,'
             'lccn,'
             'location,'
             'publisher,'
             'address,'
             'pages,'
             'on,'
             'holder,'
             'articleno,'
             'copyright,'
             'category,'
             'numpages,'
             'keywords,'
             'version,'
             'eprint,'
             'eprinttype,'
             'eid,'
             'archiveprefix,'
             'primaryclass,'
             'acmid,'
             'language,'
             'note,'
             'metadata,'
             'url,'
             'day,'
             'endday,'
             'origdate,'
             'issue',
             'month,'
             'urldate,'
             'issue_date,'
             'date,'
             'year'
            )
field_order="${field_order[*]}" # Join array with spaces.
field_order="${field_order// /}" # Remove spaces.
# }}}

args="${style[*]} --sort-fields=$field_order"
echo "bibtex-tidy $args *.bib"
bibtex-tidy $args *.bib
