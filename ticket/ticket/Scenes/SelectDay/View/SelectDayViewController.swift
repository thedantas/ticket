//
//  ViewController.swift
//  ticket
//
//  Created by Andre Dantas on 01/08/21.
//

import UIKit

protocol SelectDayViewControllerCoordinator: AnyObject {
    
}

class SelectDayViewController: UIViewController {
    
    //MARK: Protocol
    private weak var coordinator: SelectDayViewControllerCoordinator?
    
    //MARK: Layout
    lazy var mainLabel: UILabel = {
        let label = UILabel()
        label.text = "Ticket"
        label.font = UIFont.boldSystemFont(ofSize: 14)
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    //MARK: Variables
    var viewModel = SelectDayViewModel()
    
    //MARK: Life cycle
    init(coordinator: SelectDayViewControllerCoordinator) {
        self.coordinator = coordinator
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
  
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
  
    }
    
    //MARK: Setup View
    private func setupViews() {
       
        view.addSubview(mainLabel)
        navigationController?.tabBarItem.title = "Ticket"
        view.backgroundColor = .white
        
        NSLayoutConstraint.activate([
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 9),
            mainLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            mainLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            
        ])
    }
    

}
