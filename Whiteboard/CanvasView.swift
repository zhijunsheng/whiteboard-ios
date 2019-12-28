import UIKit

class CanvasView: UIView {
    override func draw(_ rect: CGRect) {
        dLine(fX: 35, fY: 82, tX: 64, tY: 183)
    }
    func dLine(fX: Int, fY: Int, tX: Int, tY: Int) {
        let li = UIBezierPath()
        li.move(to: CGPoint(x: CGFloat(fX), y: CGFloat(fY)))
        li.addLine(to: CGPoint(x: CGFloat(tX), y: CGFloat(tY)))
        li.stroke()
    }

}
