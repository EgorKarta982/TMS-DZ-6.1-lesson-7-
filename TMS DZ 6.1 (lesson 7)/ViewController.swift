
import UIKit



class ViewController: UIViewController {
    
    //MARK: - IBOutlets
    @IBOutlet var outputLabel: UILabel!
    
    //MARK: - var/let
    
    let squareView = UIView()
    var originSquareX:CGFloat = 0
    var originSquareY:CGFloat = 0
    var sideSquare: CGFloat = 200
    
    let colorSquareLabel = UILabel()
    var colorSqayreOriginX: CGFloat = 0
    var colorSqayreOriginY: CGFloat = 0
    var colorSquareLabelWidth:CGFloat = 20
    var colorSqureLabelHeith:CGFloat = 20
    
    
    //MARK: - lifecycle func
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK: - IBAction
    
    @IBAction func GoButtonPressed(_ sender: UIButton) {
        createSquare()
    }
    
    
    //MARK: - flow funcs
    private func createSquare(){
        self.squareView.frame = CGRect(x: originSquareX, y: originSquareY, width: sideSquare, height: sideSquare)
        self.squareView.backgroundColor = .random
        self.view.addSubview(squareView)
        
        self.outputLabel.frame = CGRect(x: originSquareX, y: originSquareY, width: sideSquare, height: sideSquare)
        self.outputLabel.text = "\(self.squareView.backgroundColor!)"
        self.outputLabel.numberOfLines = 0
        self.outputLabel.textAlignment = .center
        self.squareView.addSubview(outputLabel)
        
    }
    
   // переписать функцию рандомного цвета, что бы модно было брать название цвета и выводить во вью
 
//    private func findSizeColorLabel(x:CGFloat, y:CGFloat, side: CGFloat) ->(colorX:CGFloat, colorY:CGFloat, colorWitdh: CGFloat, colorHeith:CGFloat){
//        let colorX = x + side / 2
//        let colorY = y + side / 2
//        let colorWidth = side / 2
//        let colorHeith = side / 2
//        return(colorX,colorY,colorWidth,colorHeith)
//    }
    
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


