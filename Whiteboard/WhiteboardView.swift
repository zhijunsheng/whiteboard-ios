import UIKit

class WhiteboardView: UIView {

    
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        let Aa = UIBezierPath()
        Aa.move(to: CGPoint(x: 3, y: 13))
        Aa.addLine(to: CGPoint(x: 43, y: 143))
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        Aa.stroke()
    }
}
