//
//  NetworkViewController.swift
//  client-server-3-course
//
//  Created by Maxim Bekmetov on 22.06.2021.
//

import UIKit

class NetworkViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        firstRequest()
        secondRequest()
    }
    
    func secondRequest() {
        
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        
        
        //URLComponents do right coding
        var urlConstructor = URLComponents()
        
        // устанавливаем схему
                urlConstructor.scheme = "http"
        // устанавливаем хост
                urlConstructor.host = "samples.openweathermap.org"
        // путь
                urlConstructor.path = "/data/2.5/forecast"
        // параметры для запроса
                urlConstructor.queryItems = [
                    URLQueryItem(name: "q", value: "München,DE"),
                    URLQueryItem(name: "appid", value: "b1b15e88fa797225412429c1c50c122a1")
                ]

        var reuest = URLRequest(url: urlConstructor.url!)
        reuest.httpMethod = "POST"
        
        
        let task = session.dataTask(with: reuest) { data, response, error in
            
            guard let data = data else { return }
            
            do {
                let json = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                print(json)
            } catch {
                print(error)
            }
        }
        task.resume()

        
    }
    
    //easy get request
    func firstRequest() {
        let configuration = URLSessionConfiguration.default
        let session = URLSession(configuration: configuration)
        
        guard let url = URL(string: "http://samples.openweathermap.org/data/2.5/forecast?q=Moscow,DE&appid=b1b15e88fa797225412429c1c50c122a1") else { return }
        
        let task = session.dataTask(with: url) { data, response, error in
            
            guard let data = data else { return }
            
            do {
                let json = try? JSONSerialization.jsonObject(with: data, options: .mutableContainers)
                print(json)
            } catch {
                print(error)
            }
        }
        task.resume()
    }
}
