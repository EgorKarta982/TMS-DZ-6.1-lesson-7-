
import UIKit



class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var outputLabel: UILabel!
    @IBOutlet var goButton: UIButton!
    
    //MARK: - var/let
    
   // let squareView = UIView()
    var originSquareX:CGFloat = 0
    var originSquareY:CGFloat = 0
    var sideSquare: CGFloat = 100
  
    
    let colorSquareLabel = UILabel()
    var colorSqayreOriginX: CGFloat = 0
    var colorSqayreOriginY: CGFloat = 0
    var colorSquareLabelWidth:CGFloat = 20
    var colorSqureLabelHeith:CGFloat = 20
    
   // var labelInSquare = UILabel()
    
    //MARK: - lifecycle func
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - IBAction
    
    @IBAction func GoButtonPressed(_ sender: UIButton) {
      addSquare()
    }
    @IBAction func plusButtonPressed(_ sender: UIButton) {
        plusButtonPressedFunc()
    }
    
    @IBAction func minusButtonPressed(_ sender: UIButton) {
        minusButtonPressedFunc()
    }
    
    
    
    //MARK: - flow funcs
    
    private func createLabel(){
        let labelInSquare = UILabel()
        labelInSquare.frame = CGRect(x: originSquareX, y: originSquareY, width: sideSquare, height: sideSquare)
        labelInSquare.backgroundColor = .random
        labelInSquare.text = labelInSquare.backgroundColor?.accessibilityName
        labelInSquare.numberOfLines = 0
        labelInSquare.textAlignment = .center
        self.view.addSubview(labelInSquare)
        
    }
    
    private func canCreate() -> Bool {
        if originSquareX + sideSquare > self.view.frame.width { return false}
        if originSquareY + sideSquare > self.goButton.frame.origin.y {return false}
        return true
    }
    
    private func addSquare(){
        if canCreate() {
            createLabel()
            self.originSquareX += self.sideSquare
            self.addSquare()
        } else if self.originSquareX + self.sideSquare > self.view.frame.width{
            self.originSquareX = 0
            self.originSquareY += self.sideSquare
            self.addSquare()
            
        }
        self.originSquareX = 0
        self.originSquareY = 0
    }
    
    private func plusButtonPressedFunc(){
        self.sideSquare += 10
        outputLabel.text = "side square size = \(self.sideSquare)"
        return
    }
    
    private func minusButtonPressedFunc(){
        if sideSquare == 0 {return}
        self.sideSquare -= 10
        outputLabel.text = "side square size = \(self.sideSquare)"
        return
    }
    

 
    
}
//MARK: - extension

extension UIColor {
    static var random: UIColor {
        return UIColor(
            red: .random(in: 0...1),
            green: .random(in: 0...1),
            blue: .random(in: 0...1),
            alpha: 1.0
        )
    }
}


