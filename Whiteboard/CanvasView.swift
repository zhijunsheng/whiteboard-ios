import UIKit

class CanvasView: UIView {
    override func draw(_ rect: CGRect) {
//        dLine(fX: 53, fY: 82, tX: 64, tY: 183)
        dTriangle(fX: 12, fY: 45, point1X: 294, point1Y: 142, point2X: 341, point2Y: 183)
    }
    func dLine(fX: CGFloat, fY: CGFloat, tX: CGFloat, tY: CGFloat) {
        let li = UIBezierPath()
        li.move(to: CGPoint(x: fX, y: fY))
        li.addLine(to: CGPoint(x: tX, y: tY))
        li.stroke()
    }
    func dTriangle(fX: CGFloat, fY: CGFloat, point1X: CGFloat, point1Y: CGFloat, point2X: CGFloat, point2Y: CGFloat) {
        let tri = UIBezierPath()
        tri.move(to: CGPoint(x: fX, y: fY))
        tri.addLine(to: CGPoint(x: point1X, y: point1Y))
        tri.addLine(to: CGPoint(x: point2X, y: point2Y))
        tri.close()
        tri.stroke()
    }
}
