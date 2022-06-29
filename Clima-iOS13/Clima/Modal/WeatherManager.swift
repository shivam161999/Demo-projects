
import Foundation

struct WeatherManager {
    
    let weatherURL = "https://api.openweathermap.org/data/2.5/weather?appid=14b52fc7a6e258519d0b616fbb5700a4&units=metric"
    
    func fetchWeather(cityName : String){
        let urlString = "\(weatherURL)&q=\(cityName)"
        performRequest(urlString: urlString)
    }
    
    func performRequest(urlString : String) {
        
        //1. create a URL
        if let url = URL(string: urlString){
            
            //2. create URL Session
            let session = URLSession(configuration: .default)
            
            // 3. give session a task
            let task = session.dataTask(with: url) { data, response, error in
                if error != nil{
                    print(error!)
                    return
                }
                if let safeData = data {
                    self.parseJSON(weatherData : safeData)
                }
                
            }
            
            //4.start a session
            task.resume()
        }
        
    }
    func parseJSON(weatherData : Data){
        let decoder = JSONDecoder()
        do{
            let decodedData =  try decoder.decode(WeatherData.self, from: weatherData)
            print(decodedData.weather[0].description)
        }
        catch{
            print(error)
        }
        
    }
}
