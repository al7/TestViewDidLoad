import UIKit

class BaseViewController: UIViewController {
    
    /**
        This is a helper property and a helper method that will be called
        when the frame is calculated, but will prevent the formatting code
        being called more than once
    */
    private var didCalculateInitialFrame = false
    private func checkIfFrameWasCalculated() {
        if self.didCalculateInitialFrame == false {
            self.viewDidCalculateInitialFrame()
            self.didCalculateInitialFrame = true
        }
    }
    
    //-- This is where you will tie your helper method with the view lifecycle
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.checkIfFrameWasCalculated()
    }
    
    /**
        This is an overridable function that you will implement
        in your subclasses, in case you need to use this approach
        in multiple places of your app.
    */
    func viewDidCalculateInitialFrame() {
        
    }
}
