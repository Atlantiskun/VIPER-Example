//
//  UserTableViewCell.swift
//  VIPERExample
//
//  Created by Дмитрий Болучевских on 15.02.2022.
//

import UIKit

class UserTableViewCell: UITableViewCell {
    static let identifier = "UserTableViewCell"
    
    private let nameLabel: UILabel = {
        let label = UILabel()
        label.textColor = .label
        return label
    }()
    
    private let emailLabel: UILabel = {
        let label = UILabel()
        label.textColor = .secondaryLabel
        return label
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        contentView.addSubview(nameLabel)
        contentView.addSubview(emailLabel)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func configure(with user: User) {
        nameLabel.text = user.name
        emailLabel.text = user.email
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        nameLabel.frame = CGRect(x: 5,
                                 y: 5,
                                 width: contentView.frame.size.width,
                                 height: contentView.frame.size.height / 2)
        
        emailLabel.frame = CGRect(x: 5,
                                  y: contentView.frame.size.height / 2,
                                  width: contentView.frame.size.width,
                                  height: contentView.frame.size.height / 2)
    }
    
}
