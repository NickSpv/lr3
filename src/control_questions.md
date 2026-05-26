# Контрольные вопросы к лабораторной работе №3

## 1. Использование констрейнтов
Констрейнты (`constraints`) задают правила расположения и размеров элементов интерфейса. С их помощью определяют отступы, ширину, высоту, выравнивание и взаимное положение элементов. `Auto Layout` на основе этих ограничений рассчитывает итоговую геометрию интерфейса для разных экранов.
Пример:
```swift
nameLabel.translatesAutoresizingMaskIntoConstraints = false
NSLayoutConstraint.activate([
    nameLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 16),
    nameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20)
])
```

## 2. Использование привязок
Привязки (`pin` или anchors) позволяют закреплять края элемента относительно другого элемента или `Safe Area`. Например, можно привязать верхний край кнопки к нижнему краю метки с заданным отступом. Это основной способ построения адаптивной верстки.
Пример:
```swift
button.topAnchor.constraint(equalTo: nameLabel.bottomAnchor, constant: 12).isActive = true
button.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
```

## 3. Автомасштабирование текста
Автомасштабирование текста позволяет автоматически уменьшать размер шрифта, если текст не помещается в отведённую область. Для этого используют свойства вроде `adjustsFontSizeToFitWidth`, `minimumScaleFactor`, а также поддержку Dynamic Type через `adjustsFontForContentSizeCategory`.
Пример:
```swift
titleLabel.adjustsFontSizeToFitWidth = true
titleLabel.minimumScaleFactor = 0.7
titleLabel.numberOfLines = 1
```

## 4. Использование контейнера UIStackView
`UIStackView` упрощает размещение элементов по вертикали или горизонтали. Он автоматически распределяет вложенные элементы, учитывает расстояния между ними, выравнивание и способ заполнения пространства. Это уменьшает количество ручных констрейнтов и делает интерфейс проще в сопровождении.
Пример:
```swift
let stack = UIStackView(arrangedSubviews: [imageView, nameLabel, specialtyLabel])
stack.axis = .vertical
stack.spacing = 8
stack.alignment = .fill
```

## 5. Связывание элементов интерфейса с полями членами класса
Связь элементов интерфейса с кодом выполняется через `IBOutlet` и `IBAction`. `IBOutlet` позволяет обращаться к элементу из класса контроллера, например менять текст метки или изображение. `IBAction` используют для обработки действий пользователя, например нажатия кнопки.
Пример:
```swift
@IBOutlet weak var nameLabel: UILabel!

@IBAction func didTapRefresh(_ sender: UIButton) {
    nameLabel.text = "Обновлено"
}
```
