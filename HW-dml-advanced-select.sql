select g.name, count(s.name) from genre as g
	left join genre_singer as gs on g.id = gs.genre_id
	left join singer as s on gs.singer_id = s.id
	group by g.name
	order by count(s.id) desc;

select t.name, a.release_year from album as a
	left join track as t on t.album_id = a.id
	where (a.release_year >= 2019) and (a.release_year <= 2020);
	
select a.name, AVG(t.length_seconds)
	from album as a
	left join track as t on t.album_id = a.id
	group by a.name
	order by AVG(t.length_seconds);

select distinct s.name
	from singer as s
	where s.name not in (
    	select distinct s.name
    	from singer as s
    	left join singer_album as sa on s.id = sa.singer_id
    	left join album as a on a.id = sa.album_id
    	where a.release_year = 2020)
	order by s.name;

select distinct c.name from collection as c
	left join collection_track as ct on c.id = ct.collection_id
	left join track as t on t.id = ct.track_id
	left join album as a on a.id = t.album_id
	left join singer_album as sa on sa.album_id = a.id
	left join singer as s on s.id = sa.singer_id
	where s.name like '%%Philipp Kirkorov%%'
	order by c.name;

select a.name from album as a
	left join singer_album as sa on a.id = sa.album_id
	left join singer as s on s.id = sa.singer_id
	left join genre_singer as gs on s.id = gs.singer_id
	left join genre as g on g.id = gs.genre_id
	group by a.name
	having count(distinct g.name) > 1
	order by a.name;

select t.name from track as t
	left join collection_track as ct on t.id = ct.track_id
	where ct.track_id is NULL;

select s.name, t.length_seconds from track as t
	left join album as a on a.id = t.album_id
	left join singer_album as sa on sa.album_id = a.id
	left join singer as s on s.id = sa.singer_id
	group by s.name, t.length_seconds
	having t.length_seconds = (select min(length_seconds) from track)
	order by s.name;

select distinct a.name from album as a
	left join track as t on t.album_id = a.id
	where t.album_id in (
    	select album_id from track
    		group by album_id
    		having count(id) = (
        		select count(id) from track
        			group by album_id
        order by count
        limit 1))
	order by a.name;


