#ja-keng-pong game
games <- function() {
 ##variable
    hands <- c("rock", "scissor", "paper")
    user_score <- 0
    computer_score <- 0

 #intro to game
    while(TRUE){
        print("type number per following or type stop")
        print ("1 = rock")
        print ("2 = paper")
        print ("3 = scissor")
        print ("stop = stop game")

        flush.console()
        user_hand <- readline("Your hand (rock, scissor, paper, quit): ")

        #input validation
        while (user_hand != "1" & user_hand != "2" & user_hand != "3" & user_hand != "stop"){
            print("Recheck your typo or choice")
            flush.console()
            user_hand <- readline ("your hand: ")
        }

        #rule
        if(user_hand == "stop"){
            print("Total Scores: ")
            print(paste(user,":" , user_score, "| Computer :", computer_score))
            if(user_score > computer_score) {
                print("you win!")
            } else if (user_score < computer_score) {
                print("you loses!")
            } else {
                print("Draw")
            }
            print("Thank you for playing")
            break
        }

    #game
        user_choose <- hands[as.numeric(user_hand)]
        computer_choose <- sample(hands,1)
        print(paste("your hand: ", user_choose))
        print(paste("computer hand: ", computer_choose))

    #rule
    if (user_choose == computer_choose) {
        print(" Draw")
    } else if ((user_choose == "rock" & computer_choose == "scissor") ||
              (user_choose == "scissor" & computer_choose == "paper") ||
              (user_choose == "paper" & computer_choose == "rock")) {
      print("You win")
      user_score <- user_score +1
    } else {
        print("Computer win")
        computer_score <- computer_score +1
    }
    #score board
    print(paste("Your Score: ", user_score))
    print(paste("Computer Score: ", computer_score))
    }
}
