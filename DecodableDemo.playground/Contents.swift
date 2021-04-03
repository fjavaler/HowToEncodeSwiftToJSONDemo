import UIKit

// Must conform to Decodable protocol.
struct InnovationIdea: Decodable {
    let title: String
    let description: String
    let isDraft: Bool
    let submittedBy: String
}

let url = URL(string: "https://andrewcbancroft.github.io/pluralsight/iosdpbp/InnovationIdeas.json")

let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
    let json = String(data:data!, encoding: .utf8) // Just to see what the JSON looks like
    
    let decoder = JSONDecoder()
    
    do {
        let innovationIdeas = try decoder.decode([InnovationIdea].self, from: data!)
    } catch {
        print(error)
    }
}

task.resume()
