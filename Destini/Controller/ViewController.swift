import UIKit

class ViewController: UIViewController {
  @IBOutlet var storyLabel: UILabel!
  @IBOutlet var choice1Button: UIButton!
  @IBOutlet var choice2Button: UIButton!

  var storyBrain = StoryBrain()

  override func viewDidLoad() {
    super.viewDidLoad()

    updateStory()
  }

  @IBAction func choiceMade(_ sender: UIButton) {
    storyBrain.nextStory(choice: sender.currentTitle!)

    updateStory()
  }

  func updateStory() {
    let story = storyBrain.getActiveStory()

    storyLabel.text = story.title

    choice1Button.setTitle(story.firstChoice, for: .normal)
    choice2Button.setTitle(story.secondChoice, for: .normal)
  }
}
