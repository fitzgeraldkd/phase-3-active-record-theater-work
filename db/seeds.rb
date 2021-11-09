Role.destroy_all
# Role.reset_pk_sequence
Audition.destroy_all
# Audition.reset_pk_sequence

10.times do
  Role.create(character_name: Faker::FunnyName.name)
end

40.times do
  Audition.create(
    actor: Faker::Name.name,
    location: Faker::Address.street_address,
    phone: Faker::Number.number(digits: 10),
    # hired: Faker::Boolean.boolean, # randomly set hired on seed
    hired: 0, # set hired to false on seed
    role_id: Role.all.sample.id
  )
end