/* umesto pretrage:
use sql_blog;
select *
from posts
where title like '%react redux%' or body like '%react redux%';
*/


/*kreiram i izvrsim indeksiranje*/

create fulltext index idx_title_body on posts(title,body);


/*zatim napravim pretragu i izvrsim */

select *,match (title, body) against ('react redux')
from posts
where match (title, body) against ('react redux');



/*zatim napravim pretragu i izvrsim */
select *,match (title, body) against ('react redux')
from posts
where match (title, body) against ('react-redux' in boolean mode);

/*zatim napravim pretragu i izvrsim */
select *,match (title, body) against ('react redux')
from posts
where match (title, body) against ('"handeling a form"' in boolean mode);
