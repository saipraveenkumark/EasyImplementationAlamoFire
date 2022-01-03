//
//  ViewController.swift
//  EasyImpAlamoFire
//
//  Created by Sai Katteboina on 04/01/22.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // GET Single Resource
        SessionManager.getResource(resourceID: 1) { (response) in
            print(response)
        }
        // GET All Resources
        SessionManager.getAllResources { (resources) in
            print(resources, resources.count)
        }
        
        // POST a Resource
        SessionManager.postResource(res: Resource(id: 435, userId: 8, title: "Demo Resource", body: "A dummy resource for Medium Post")) { (response) in
            print("API Response", response)
        }
        
        /* Calling the Generic API function - Pass the URLRequestConvertible defined and the Model
           in which we want the result of the API to be mapped.
        */
        SessionManager.fetchData(urlRequest: SessionManager.getResource(resourceId: 1)){ (res: Resource) in
            print("API Responce", res)
        }
    }


}

