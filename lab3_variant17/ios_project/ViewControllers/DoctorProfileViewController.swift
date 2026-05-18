import UIKit

final class DoctorProfileViewController: UIViewController {
    @IBOutlet private weak var photoImageView: UIImageView!
    @IBOutlet private weak var fullNameLabel: UILabel!
    @IBOutlet private weak var specialityLabel: UILabel!
    @IBOutlet private weak var qualificationLabel: UILabel!
    @IBOutlet private weak var experienceLabel: UILabel!
    @IBOutlet private weak var aboutTextView: UITextView!
    @IBOutlet private weak var appointmentButton: UIButton!
    @IBOutlet private weak var favoriteButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        title = "Профиль врача"
        view.backgroundColor = .systemBackground

        photoImageView.image = UIImage(systemName: "person.crop.circle.fill")
        photoImageView.tintColor = .systemTeal
        fullNameLabel.text = "Анна Смирнова"
        specialityLabel.text = "Кардиолог"
        qualificationLabel.text = "Высшая категория"
        experienceLabel.text = "Опыт работы: 12 лет"
        aboutTextView.text = "Проводит диагностику и лечение сердечно-сосудистых заболеваний, консультирует по профилактике и восстановлению после терапии."

        appointmentButton.configuration = .filled()
        appointmentButton.configuration?.title = "Записаться"

        favoriteButton.configuration = .bordered()
        favoriteButton.configuration?.title = "В избранное"
    }
}
