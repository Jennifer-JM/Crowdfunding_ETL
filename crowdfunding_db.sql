

SELECT c.contact_id
  FROM contacts c
  JOIN campaign ca
    ON c.contact_id = ca.contact_id;

SELECT ctg.category_id
  FROM category ctg
  JOIN campaign ca
    ON ctg.category_id = ca.category_id;

SELECT sctg.subcategory_id
  FROM subcategory sctg
  JOIN campaign ca
    ON sctg.subcategory_id = ca.subcategory_id;