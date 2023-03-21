//
//  ViewController.swift
//  Insurfin
//
//  Created by Jagadeesh on 15/02/23.
//

import UIKit

class OnboardingScreen: UIViewController {
    

    @IBOutlet weak var pageControl: UIPageControl!
    @IBOutlet weak var displayImage: UIImageView!
    @IBOutlet weak var onboardingCollectionView: UICollectionView!
    @IBOutlet weak var startedBtn: UIButton!
    @IBOutlet weak var skipBtn: UIButton!
    
    var slides:[OnboardingSlide] = []
    
    var currentpage = 0 {
        didSet {
            pageControl.currentPage = currentpage
            
           if currentpage == slides.count - 1 {
               
              startedBtn.isHidden = false
               pageControl.isHidden = true
               skipBtn.isHidden = true

                
            }else {
                pageControl.isHidden = false
                startedBtn.isHidden = true
                skipBtn.isHidden = false

            }
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        slides = [OnboardingSlide(title: "Hey there,\nWelcome to Insurfin!", description: "Lorem ipsum dolor sit amet, nullam albucius officiis id vis, consul quaerendum cum ad."),OnboardingSlide(title: "Keep track of all your customer policies", description: "Lorem ipsum dolor sit amet, nullam albucius officiis id vis, consul quaerendum cum ad."),OnboardingSlide(title: "Hassle free onboarding process", description: "Lorem ipsum dolor sit amet, nullam albucius officiis id vis, consul quaerendum cum ad."),OnboardingSlide(title: "Join the journey \nwith us", description: "Lorem ipsum dolor sit amet, nullam albucius officiis id vis, consul quaerendum cum ad.")]
        
        startedBtn.layer.cornerRadius = 10
        
        
  //MARK:- Calling  delegate and datasource
        
        onboardingCollectionView.delegate = self
        onboardingCollectionView.dataSource = self
        
        
        
    }

    @IBAction func startedAction(_ sender: Any) {
        
        let PhnVC = storyboard?.instantiateViewController(withIdentifier: "PhoneNumberVC")
        PhnVC?.modalPresentationStyle = .fullScreen
       present(PhnVC!, animated: true)
    }
    
    @IBAction func skipBtn(_ sender: Any) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "PhoneNumberVC")
        vc?.modalPresentationStyle = .fullScreen
        present(vc!, animated: true)
        
    }
    
    
}

//Marks:- Set CollectionView Datasource and delegate

extension OnboardingScreen: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = onboardingCollectionView.dequeueReusableCell(withReuseIdentifier: "OnboardingCell", for: indexPath) as? OnboardingCell
        cell?.titleLbl.text = slides[indexPath.row].title
        cell?.descriptionLbl.text = slides[indexPath.row].description
        cell?.onboardingImage.layer.cornerRadius = 10
        return cell!
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        return CGSize(width: onboardingCollectionView.frame.width, height: onboardingCollectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentpage = Int(scrollView.contentOffset.x / width)
        
       
        
    }
    
  
    
}

