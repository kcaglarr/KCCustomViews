import UIKit

@IBDesignable
public class KCCheckbox: UIControl {
    
    private weak var checkboxImageView: UIImageView!
    
    private var checkboxImage : UIImage {
        return checked ? UIImage(named: "check")! : UIImage(named: "uncheck")!
    }
    
    @IBInspectable
    open var checked: Bool = false {
        didSet {
            checkboxImageView.image = checkboxImage
        }
    }
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        commonInit()
    }
    
    private func commonInit() {
        
        let imageView = UIImageView()
        imageView.translatesAutoresizingMaskIntoConstraints = false
        addSubview(imageView)
        
        NSLayoutConstraint.activate([
            imageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            imageView.trailingAnchor.constraint(equalTo: trailingAnchor),
            imageView.topAnchor.constraint(equalTo: topAnchor),
            imageView.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
        
        imageView.contentMode = .scaleAspectFit
        imageView.image = checkboxImage
        self.checkboxImageView = imageView
        backgroundColor = .clear
        
        addTarget(self, action: #selector(clickCheckbox), for: .touchUpInside)
    }
    
    @objc func clickCheckbox() {
        checked = !checked
        sendActions(for: .valueChanged)
    }
}
