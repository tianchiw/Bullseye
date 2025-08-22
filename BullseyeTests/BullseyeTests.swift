import Testing
@testable import Bullseye

@MainActor
struct BullseyeTests {
  var game: Game

  init() {
    game = Game()
  }
  
  @Test func scoreIsCorrectWhenGuessAboveTarget() async throws {
    let guess = game.target + 5
    let score = game.points(sliderValue: guess)
    #expect(score == 95)
  }
  
  @Test func scoreIsCorrectWhenGuessBelowTarget() async throws {
    let guess = game.target - 5
    let score = game.points(sliderValue: guess)
    #expect(score == 95)
  }
  
}
