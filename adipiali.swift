import UIKit

class CustomView: UIView {
    
    /// At half the height of the view. You can override the guide calculation for a custom layout.
    /// This method provides a default guide positioned at the vertical center of the view.
    /// Override this method to provide a different position for the layout guide if needed.
    func defaultVerticalGuide() -> CGFloat {
        return self.frame.height / 2
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        let guidePosition = defaultVerticalGuide()
        
        // Use guidePosition to layout subviews
        for subview in self.subviews {
            // Example layout logic using the guidePosition
            subview.center.y = guidePosition
        }
    }
    
    // Example of overriding the defaultVerticalGuide method in a subclass
    class CustomLayoutView: CustomView {
        override func defaultVerticalGuide() -> CGFloat {
            // Custom guide calculation, e.g., one-third the height of the view
            return self.frame.height / 3
        }
    }
}
