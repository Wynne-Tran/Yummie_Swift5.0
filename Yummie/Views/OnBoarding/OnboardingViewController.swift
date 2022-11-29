//
//  OnboardingViewController.swift
//  Yummie
//
//  Created by graphic on 2022-11-28.
//

import UIKit

class OnboardingViewController: UIViewController {

    @IBOutlet weak var CollectionView: UICollectionView!
    
    @IBOutlet weak var nextBtn: UIButton!
    
    @IBOutlet weak var pageControl: UIPageControl!
    
    var slides: [OnboardingSlide]  = []
    override func viewDidLoad() {
        super.viewDidLoad()
        // For extension in the end
        //CollectionView.delegate = self
        //CollectionView.dataSource = self
        //OnboardingSlide(title: "Delicious Dishes", description: "Experience a variety of amazing dishes from different cultures around the world.", image: #imageLiteral(resourceName: "slide2")),
//        slides = [
//                    OnboardingSlide(title: "Delicious Dishes", description: "Experience a variety of amazing dishes from different cultures around the world.", image:  UIImage(named: "slide2")!),
//                    OnboardingSlide(title: "World-Class Chefs", description: "Our dishes are prepared by only the best.", image: UIImage(named: "slide2")!),
//                    OnboardingSlide(title: "Instant World-Wide Delivery", description: "Your orders will be delivered instantly irrespective of your location around the world.", image:  UIImage(named: "slide2")!)
//                ]
    }
    
    @IBAction func nextBtnClick(_ sender: Any) {
        
    }
    
    
    
}

extension OnboardingViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: OnboardingCollectionViewCell.identifier, for: indexPath) as! OnboardingCollectionViewCell
        cell.setup(slides[indexPath.row])
        return cell
    }
    
    
    
}

