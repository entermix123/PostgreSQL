UPDATE animals
SET owner_id = (SELECT owners.id FROM owners WHERE name = 'Kaloqn Stoqnov')
WHERE
    owner_id IS NULL