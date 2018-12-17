//
//  SearchViewController.swift
//  LuckyDay
//
//  Created by Jason Picallos on 12/17/18.
//  Copyright © 2018 Greek APP. All rights reserved.
//

import UIKit


class SearchViewController: UIViewController {
   
   
   @IBOutlet weak var _tableView: UITableView!
   
   private let cellID = "PostCell"
   
   private var post: [PhotoDetails]?
   
   let urlGenerator = APIHelper()
   
   @IBOutlet weak var searchBar: UISearchBar!
   
   override func viewDidLoad() {
      super.viewDidLoad()
      self.searchBar.delegate = self
   }
}

// MARK: Fetch Data
extension SearchViewController {
   
   private func fetchData(withSearchText searchText: String) {
      guard let url = self.urlGenerator.urlFromParameters(searchString: searchText) else {
         return
      }
      
      URLSession.shared.dataTask(with: url) { (data, response, error) in
         guard error == nil else { return }
         if let data = data {
            do {
               let result = try JSONDecoder().decode(Post.self, from: data)
               self.post = result.photos.photo
               DispatchQueue.main.async { [weak self] in
                  self?._tableView.reloadData()
               }
            } catch let error as NSError {
               print("error with task \(error.localizedDescription)")
            }
         }
         }.resume()
      
      
   }
}

extension SearchViewController: UITableViewDataSource {
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      return self.post?.count ?? 0
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
      guard let cell = tableView.dequeueReusableCell(withIdentifier: self.cellID, for: indexPath) as? PostCell else {
         return UITableViewCell()
      }
      if let post = self.post?[exist: indexPath.row] {
         cell.post = post
      }
      return cell
   }
}

// MARK: Search Bar delegate
extension SearchViewController: UISearchBarDelegate {
   func searchBarSearchButtonClicked(_ searchBar: UISearchBar) {
      self.searchBar.resignFirstResponder()
   }
   
   func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
      if let text = searchBar.text {
         self.fetchData(withSearchText: text)
      }
   }
}

extension Collection where Indices.Iterator.Element == Index {
   subscript (exist index: Index) -> Iterator.Element? {
      return indices.contains(index) ? self[index] : nil
   }
}
