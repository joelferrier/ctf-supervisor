scn = Scenario.find_or_create_by!(name: "Search And Destroy",
                                  description: "Find and destroy the package")

level_1 = Level.find_or_create_by!(name: "Public Areas",
                                   description: "Lobby kiosk",
                                   number: 1,
                                   scenario: scn)
level_2 = Level.find_or_create_by!(name: "Office Floor",
                                   description: "Unattended laptop",
                                   number: 2,
                                   scenario: scn)
level_3 = Level.find_or_create_by!(name: "Server Room",
                                   description: "The inner sanctum",
                                   number: 3,
                                   scenario: scn)

cat_1 = Category.find_or_create_by!(name: "Easy")

chal_1 = Challenge.find_or_create_by!(name: "l1_chal1",
                                      number: 1,
                                      description: "compromise kiosk",
                                      points: 100,
                                      level: level_1)
chal_2 = Challenge.find_or_create_by!(name: "l1_chal2",
                                      number: 2,
                                      description: "pivot",
                                      points: 200,
                                      level: level_1)
chal_3 = Challenge.find_or_create_by!(name: "l1_chal3",
                                      number: 3,
                                      description: "unlock door",
                                      points: 300,
                                      level: level_1)
chal_4 = Challenge.find_or_create_by!(name: "l2_chal1",
                                      number: 1,
                                      description: "compromise laptop",
                                      points: 200,
                                      category: cat_1,
                                      level: level_2)
chal_5 = Challenge.find_or_create_by!(name: "l2_chal2",
                                      number: 2,
                                      description: "get hashes",
                                      points: 300,
                                      category: cat_1,
                                      level: level_2)

hint_1 = Hint.find_or_create_by!(id: 1,
                                 message: "sample hint 1",
                                 points: 20,
                                 challenge: chal_1)
hint_2 = Hint.find_or_create_by!(id: 2,
                                 message: "sample hint 2",
                                 points: 50,
                                 challenge: chal_1)
hint_3 = Hint.find_or_create_by!(id: 3,
                                 message: "sample hint 3",
                                 points: 30,
                                 challenge: chal_3)
hint_4 = Hint.find_or_create_by!(id: 4,
                                 message: "sample hint 4",
                                 points: 10,
                                 challenge: chal_4)

ans_1 = Answer.find_or_create_by!(id: 1,
                                  solution: "sample text 1",
                                  solution_type: "Text",
                                  match_case: false,
                                  penalty: 10,
                                  challenge: chal_1)
ans_2 = Answer.find_or_create_by!(id: 2,
                                  solution: "sample text 2",
                                  solution_type: "Text",
                                  match_case: false,
                                  penalty: 20,
                                  challenge: chal_2)
ans_3 = Answer.find_or_create_by!(id: 3,
                                  solution: "sample text 3",
                                  solution_type: "Text",
                                  match_case: false,
                                  penalty: 10,
                                  challenge: chal_3)
ans_4 = Answer.find_or_create_by!(id: 4,
                                  solution: "sample text 4",
                                  solution_type: "Text",
                                  match_case: false,
                                  penalty: 10,
                                  challenge: chal_4)
ans_5 = Answer.find_or_create_by!(id: 5,
                                  solution: "sample text 5",
                                  solution_type: "Text",
                                  match_case: false,
                                  penalty: 10,
                                  challenge: chal_5)

