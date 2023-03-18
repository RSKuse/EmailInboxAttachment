//
//  EmailInboxInfo.swift
//  EmailInboxAttachment
//
//  Created by Reuben Simphiwe Kuse on 2023/03/16.
//

import UIKit

class EmailInboxInfo: UITableViewCell {
    
    lazy var titleLabel: UILabel = {
        let label = UILabel()
        label.text = "Bandisa & Thami"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 16, weight: .semibold)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var subHeadingLabel: UILabel = {
        let label = UILabel()
        label.text = "Kasi money - Retail Agreement rate"
        label.textColor = .black
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var detailLabel: UILabel = {
        let label = UILabel()
        label.text = "Thanks man, please be on the look out for the pandadocs link for signatures. Regards Bandisa..."
        label.textColor = .darkGray
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    lazy var backArrowImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "back_arrow_icon")
        //imageView.layer.cornerRadius = 25
        imageView.contentMode = .scaleAspectFill
        //imageView.backgroundColor = .darkGray
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var nextArrowImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "arrow_next_right_icon")
        //imageView.layer.cornerRadius = 25
        imageView.contentMode = .scaleAspectFill
        //imageView.backgroundColor = .darkGray
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var attachmentClipImage: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "attachment_paperclip_icon")
        imageView.layer.cornerRadius = 25
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .darkGray
        imageView.clipsToBounds = true
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()
    
    lazy var timestampLabel: UILabel = {
        let label = UILabel()
        label.text = "11:53"
        label.textColor = .darkGray
        label.textAlignment = .right
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    lazy var labelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, timestampLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 5.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var userStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [labelStackView, timestampLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var sublabelStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [userStackView, subHeadingLabel, detailLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 5.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        
        addSubview(userStackView)
        addSubview(sublabelStackView)
        
        
        accessoryType = UITableViewCell.AccessoryType.none
        
        userStackView.leftAnchor.constraint(equalTo: leftAnchor, constant: 20).isActive = true
        userStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        userStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
        backArrowImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        backArrowImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        
        backArrowImage.leftAnchor.constraint(equalTo:titleLabel.rightAnchor, constant: 20).isActive = true
        //userStackView.rightAnchor.constraint(equalTo: rightAnchor, constant: -16).isActive = true
        //userStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        
        //nextArrowImage.heightAnchor.constraint(equalToConstant: 25).isActive = true
        //nextArrowImage.widthAnchor.constraint(equalToConstant: 25).isActive = true
        
        timestampLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}
