show create table productnotes;

select note_text from productnotes where match(note_text) against('rabbit');

select note_text from productnotes where note_text like '%rabbit%';

select note_text, match(note_text) against('rabbit') as rank from productnotes;

select note_text from productnotes where match(note_text) against('anvils');

select note_text from productnotes where match(note_text) against('anvils' with query expansion);

select note_text from productnotes where match(note_text) against('heavy' in boolean mode);

select note_text from productnotes where match(note_text) against('heavy -rope*' in boolean mode);

select note_text from productnotes where match(note_text) against('+rabbit + bait' in boolean mode);

select note_text from productnotes where match(note_text) against('rabbit bait' in boolean mode);

select note_text from productnotes where match(note_text) against('"rabbit bait"' in boolean mode);

select note_text from productnotes where match(note_text) against('>rabbit <carrot' in boolean mode);

select note_text from productnotes where match(note_text) against('+safe (<combination)' in boolean mode);