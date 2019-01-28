import UIKit

class FirstViewController_20190121: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "FirstView"
        view.backgroundColor = UIColor.red
        
        let width = view.frame.width
        let height = view.frame.height
        
        let transitionBtn = UIButton()
        transitionBtn.frame.size = CGSize(width: width * 0.6, height: height * 0.2)
        transitionBtn.center = view.center
        transitionBtn.backgroundColor = UIColor.blue
        transitionBtn.setTitle("Go SecondVC", for: UIControl.State.normal)
        transitionBtn.addTarget(self, action: #selector(goSevondVC(sender:)), for:.touchUpInside)
        view.addSubview(transitionBtn)
    }
    
    @objc internal func goSevondVC(sender: UIButton){
        let secondVC = SecondViewController_20190121()
        self.navigationController?.pushViewController(secondVC, animated: true)
    }
}