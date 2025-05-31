(define-data-var player1-address principal tx-sender)
(define-data-var coin-side bool false) ;; true = heads, false = tails
(define-data-var game-started bool false)
(define-data-var game-finished bool false)

;; Player 1 starts the game and commits to a side of the coin
(define-public (start-game (side bool))
  (if (var-get game-started)
      (err u100) ;; Game already started
      (begin
        (var-set player1-address tx-sender)
        (var-set coin-side side)
        (var-set game-started true)
        (var-set game-finished false)
        (ok "Game started. Waiting for Player 2 to guess.")
      )
  )
)

;; Player 2 guesses heads or tails
(define-public (make-guess (guess bool))
  (begin
    (if (not (var-get game-started))
        (err u101) ;; Game not started
        (if (var-get game-finished)
            (err u102) ;; Game already finished
            (if (is-eq tx-sender (var-get player1-address))
                (err u103) ;; Player 1 cannot guess
                (begin
                  (var-set game-finished true)
                  (if (is-eq guess (var-get coin-side))
                      (ok "Correct guess! Player 2 wins!")
                      (ok "Wrong guess! Player 1 wins!")
                  )
                )
            )
        )
    )
  )
)


;; Reset the game (only by Player 1)
(define-public (reset-game)
  (if (not (is-eq tx-sender (var-get player1-address)))
      (err u104) ;; Only Player 1 can reset
      (begin
        (var-set game-started false)
        (var-set game-finished false)
        (ok "Game reset.")
      )
  )
)
