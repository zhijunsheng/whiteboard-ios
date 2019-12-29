import UIKit

class WhiteboardView: UIView {

    var points: [CGPoint] = []
    
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        let Aa = UIBezierPath()
        Aa.move(to: CGPoint(x: 3, y: 13))
        Aa.addLine(to: CGPoint(x: 43, y: 143))
        
        for point in points {
            Aa.addLine(to: point)
        }
        
        #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1).setStroke()
        Aa.stroke()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        let touch = touches.first!
        let touchLocation = touch.location(in: self)
 //       print("\(touchLocation.x), \(touchLocation.y)")
        
        points.append(touchLocation)
        setNeedsDisplay()
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
    }
}
