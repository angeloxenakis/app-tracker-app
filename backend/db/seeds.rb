User.destroy_all
AppRecord.destroy_all


u1 = User.create(username: "Angelo Xenakis", password: "123")

AppRecord.create({
    company_name: "SuperCorp",
    position: "SuperBoss",
    description: "Real cray",
    city: "Houston",
    interest_level: "high",
    app_link: "www.instagram.com/angeloxenakis",
    notes: "nah",
    date_applied: Date.new(2021,6,2),
    last_contact: Date.new(2021,6,2),
    user_id: u1.id
})

AppRecord.create({
    company_name: "DopeBiz",
    position: "Baller",
    description: "Ballin",
    city: "Houston",
    interest_level: "high",
    app_link: "www.instagram.com/angeloxenakis",
    notes: "nah",
    date_applied: Date.new(2021,6,2),
    last_contact: Date.new(2021,6,2),
    user_id: u1.id
})


# t.string :company_name
# t.string :position
# t.string :description
# t.integer :salary
# t.string :city 
# t.string :interest_level
# t.string :app_link
# t.string :notes
# t.datetime :date_applied
# t.datetime :last_contact

# t.integer :user_id