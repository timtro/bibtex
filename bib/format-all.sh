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
         '--sort=key'
        )
# }}}
# Order for field sorting {{{
field_order=('author,'
             'title,'
             'subtitle,'
             'shorttitle,'
             'booktitle,'
             'journal,'
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
             'month,'
             'day,'
             'pages,'
             'on,'
             'holder,'
             'articleno,'
             'copyright,'
             'category,'
             'issue_date,'
             'numpages,'
             'editor,'
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
             'urldate,'
             'year'
            )
field_order="${field_order[*]}" # Join array with spaces.
field_order="${field_order// /}" # Remove spaces.
# }}}

args="${style[*]} --sort-fields=$field_order"
echo "bibtex-tidy $args *.bib"
bibtex-tidy $args *.bib
