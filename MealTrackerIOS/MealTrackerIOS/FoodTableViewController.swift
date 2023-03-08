import UIKit

class FoodTableViewController: UITableViewController {
    
    var meals: [Meal] {
        var breakfast = Meal(name: "breakfast", food: [Food(name: "eggs", description: "over easy")])
        var lunch = Meal(name: "lunch", food: [Food(name: "sandwhich", description: "ham and cheese")])
        var dinner = Meal(name: "dinner", food: [Food(name: "steak", description: "medium rare")])

        return [breakfast, lunch, dinner]
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        return meals.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return meals[section].food.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Food", for: indexPath)
            
                let meal = meals[indexPath.section]
                let food = meal.food[indexPath.row]
                
                var content = cell.defaultContentConfiguration()
                content.text = food.name
                content.secondaryText = food.description
                cell.contentConfiguration = content
            
                return cell
    }
}
