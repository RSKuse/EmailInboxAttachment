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
        label.text = "Situated just behind Coogee Beach, Courland House by Secret Gardens is a garden oasis home that has been discreetly tucked away to offer the owners the utmost privacy. Designed to make one feel calm, the family home of two landscape designers features many connections to outdoor spaces alongside warm interior choices. Intended to make each space shine separately, the external areas have been designed to be the hero of the family home and become spaces of indulgent tranquillity."
        label.textColor = .darkGray
        label.numberOfLines = 2
        label.font = UIFont.systemFont(ofSize: 14, weight: .regular)
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
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
    
    lazy var backArrowImage: UIImageView = {
           let imageView = UIImageView()
           imageView.image = UIImage(named: "back_arrow_icon")
           imageView.layer.cornerRadius = 10
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
            //imageView.layer.cornerRadius = 25
            imageView.contentMode = .scaleAspectFill
            //imageView.backgroundColor = .darkGray
            imageView.clipsToBounds = true
            imageView.translatesAutoresizingMaskIntoConstraints = false
            return imageView
        }()
        
    
    // StackViews
    lazy var titleTimeStampStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleLabel, timestampLabel])
        stackView.axis = .horizontal
        stackView.distribution = .fillProportionally
        stackView.spacing = 10.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    lazy var subHeadingDetailStackView: UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [titleTimeStampStackView,
                                                       subHeadingLabel,
                                                       detailLabel])
        stackView.axis = .vertical
        stackView.distribution = .fillProportionally
        stackView.spacing = 5.0
        stackView.alignment = .leading
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: UITableViewCell.CellStyle.default, reuseIdentifier: reuseIdentifier)
        
        addSubview(subHeadingDetailStackView)
        addSubview(backArrowImage)
        addSubview(nextArrowImage)
        addSubview(attachmentClipImage)
        
        subHeadingDetailStackView.leftAnchor.constraint(equalTo: leftAnchor,
                                                constant: 20).isActive = true
        subHeadingDetailStackView.rightAnchor.constraint(equalTo: rightAnchor,
                                                 constant: -20).isActive = true
        subHeadingDetailStackView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        
        titleTimeStampStackView.leftAnchor.constraint(equalTo: leftAnchor,
                                                      constant: 20).isActive = true
        titleTimeStampStackView.rightAnchor.constraint(equalTo: rightAnchor,
                                                       constant: -30).isActive = true
        
        // Add a width for the timestamp
        timestampLabel.widthAnchor.constraint(equalToConstant: 50).isActive = true
        
        backArrowImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        backArrowImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        backArrowImage.leftAnchor.constraint(equalTo:titleTimeStampStackView.leftAnchor, constant: -20).isActive = true
        backArrowImage.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: -20).isActive = true
        
        nextArrowImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        nextArrowImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        nextArrowImage.leftAnchor.constraint(equalTo:titleTimeStampStackView.rightAnchor, constant: 5).isActive = true
        nextArrowImage.topAnchor.constraint(equalTo: titleTimeStampStackView.bottomAnchor, constant: -20).isActive = true
        
        attachmentClipImage.heightAnchor.constraint(equalToConstant: 20).isActive = true
        attachmentClipImage.widthAnchor.constraint(equalToConstant: 20).isActive = true
        attachmentClipImage.leftAnchor.constraint(equalTo:titleTimeStampStackView.rightAnchor, constant: 5).isActive = true
        attachmentClipImage.topAnchor.constraint(equalTo: nextArrowImage.bottomAnchor, constant: 5).isActive = true

    }
    
    required init?(coder aDecoder: NSCoder) { fatalError("init(coder:) has not been implemented") }
    
}
