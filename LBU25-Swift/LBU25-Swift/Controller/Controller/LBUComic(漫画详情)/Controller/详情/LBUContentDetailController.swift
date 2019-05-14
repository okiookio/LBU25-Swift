//
//  LBUContentDetailController.swift
//  LBU25-Swift
//
//  Created by liubo on 2019/5/14.
//  Copyright © 2019 刘博. All rights reserved.
//

import UIKit

class LBUContentDetailController: LBUBaseController {

    // 代理
    weak var delegate: LBUComicViewWillEndDraggingDelegate?
    
    // 模型
    var detailStatic: LBUDetailStaticModel?
    var detailRealtime: LBUDetailRealtimeModel?
    var guessLike: LBUGuessLikeModel?
    
    private  lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
//        tableView.delegate = self
        tableView.backgroundColor = UIColor.background
//        tableView.dataSource = self
        tableView.separatorStyle = .none
//        tableView.register(cellType: UDescriptionTCell.self)
//        tableView.register(cellType: UOtherWorksTCell.self)
//        tableView.register(cellType: UTicketTCell.self)
//        tableView.register(cellType: UGuessLikeTCell.self)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func reloadData() {
        tableView.reloadData()
    }
    
//    override func configUI() {
//        view.addSubview(tableView)
//        tableView.snp.makeConstraints {$0.edges.equalTo(self.view.usnp.edges) }
//    }
}

//extension LBUContentDetailController: UITableViewDelegate, UITableViewDataSource {

//    func scrollViewWillEndDragging(_ scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
//        delegate?.comicWillEndDragging(scrollView)
//    }
//
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return detailStatic != nil ? 4 : 0
//    }
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return (section == 1 && detailStatic?.otherWorks?.count == 0) ? 0 : 1
//    }
//
//    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return CGFloat.leastNormalMagnitude
//    }
//
//    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
//        return UIView()
//    }
//
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        if indexPath.section == 0 {
//            return UDescriptionTCell.height(for: detailStatic)
//        } else if indexPath.section == 3{
//            return 200
//        } else {
//            return 44
//        }
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        if indexPath.section == 0 {
//            let cell = tableView.dequeueReusableCell(for: indexPath, cellType: UDescriptionTCell.self)
//            cell.model = detailStatic
//            return cell
//        } else if indexPath.section == 1 {
//            let cell = tableView.dequeueReusableCell(for: indexPath, cellType: UOtherWorksTCell.self)
//            cell.model = detailStatic
//            return cell
//        } else if indexPath.section == 2 {
//            let cell = tableView.dequeueReusableCell(for: indexPath, cellType: UTicketTCell.self)
//            cell.model = detailRealtime
//            return cell
//        } else {
//            let cell = tableView.dequeueReusableCell(for: indexPath, cellType: UGuessLikeTCell.self)
//            cell.model = guessLike
//            cell.didSelectClosure { [weak self] (comic) in
//                let vc = UComicViewController(comicid: comic.comic_id)
//                self?.navigationController?.pushViewController(vc, animated: true)
//            }
//            return cell
//        }
//    }
//
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        if indexPath.section == 1 {
//            let vc = UOtherWorksViewController(otherWorks: detailStatic?.otherWorks)
//            navigationController?.pushViewController(vc, animated: true)
//        }
//    }
//
//    func tableView(_ tableView: UITableView, heightForFooterInSection section: Int) -> CGFloat {
//        return (section == 1 && detailStatic?.otherWorks?.count == 0) ? CGFloat.leastNormalMagnitude : 10
//    }
//
//    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
//        return UIView()
//    }
//}
