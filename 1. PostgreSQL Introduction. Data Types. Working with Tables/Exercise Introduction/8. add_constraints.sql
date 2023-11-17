-- ALTER TABLE minions_info
-- ADD CONSTRAINTS UQ_name_and_id
-- UNIQUE (id, "name"),

-- ADD CONSTRAINTS CK_banana_is_positive_number
-- CHECK (banana > 0)

ALTER TABLE minions_info

ADD CONSTRAINT unique_containt
UNIQUE (id, email),

ADD CONSTRAINT banana_check
CHECK (banana > 0);