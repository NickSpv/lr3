import UIKit

final class DoctorProfileViewController: UIViewController {
    @IBOutlet private weak var doctorImageView: UIImageView!
    @IBOutlet private weak var firstLabel: UILabel!
    @IBOutlet private weak var middleLabel: UILabel!
    @IBOutlet private weak var lastLabel: UILabel!

    @IBOutlet private weak var firstField: UITextField!
    @IBOutlet private weak var middleField: UITextField!
    @IBOutlet private weak var lastField: UITextField!

    @IBOutlet private weak var descriptionView: UITextView!

    @IBOutlet private weak var cancelButton: UIButton!
    @IBOutlet private weak var saveButton: UIButton!
    @IBOutlet private weak var clearButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = ""

        configureContent()
        configureStyle()
    }

    private func configureContent() {
        doctorImageView.image = UIImage(named: "flower") ?? UIImage(systemName: "photo")
        firstLabel.text = "First"
        middleLabel.text = "Middle"
        lastLabel.text = "Last"

        firstField.placeholder = "First"
        middleField.placeholder = "Middle"
        lastField.placeholder = "Last"

        descriptionView.text = "Your description..."

        cancelButton.setTitle("Cancel", for: .normal)
        saveButton.setTitle("Save", for: .normal)
        clearButton.setTitle("Clear", for: .normal)
    }

    private func configureStyle() {
        doctorImageView.contentMode = .scaleAspectFill
        doctorImageView.clipsToBounds = true
        doctorImageView.layer.borderWidth = 0.5
        doctorImageView.layer.borderColor = UIColor.systemGray4.cgColor

        [firstLabel, middleLabel, lastLabel].forEach {
            $0?.font = .systemFont(ofSize: 22)
            $0?.textColor = .black
        }

        [firstField, middleField, lastField].forEach {
            $0?.font = .systemFont(ofSize: 20)
            $0?.borderStyle = .roundedRect
            $0?.backgroundColor = .white
            $0?.textColor = .black
        }

        descriptionView.font = .systemFont(ofSize: 20)
        descriptionView.textColor = .darkText
        descriptionView.backgroundColor = UIColor(red: 0.91, green: 0.84, blue: 0.80, alpha: 1)

        [cancelButton, saveButton, clearButton].forEach {
            $0?.backgroundColor = UIColor(red: 0.53, green: 0.80, blue: 0.76, alpha: 1)
            $0?.setTitleColor(.white, for: .normal)
            $0?.titleLabel?.font = .systemFont(ofSize: 20)
        }
    }
}
