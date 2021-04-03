import UIKit

struct InnovationIdea {
    let title: String
    let description: String
    let isDraft: Bool
    let submittedBy: String
}

let url = URL(string: "https://andrewcbancroft.github.io/pluralsight/iosdpbp/InnovationIdeas.json")

let task = URLSession.shared.dataTask(with: url!) { (data, response, error) in
    let json = String(data:data!, encoding: .utf8)
    print(json)// Just to see what the JSON looks like
}

task.resume()
