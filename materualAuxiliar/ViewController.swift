//
//  ViewController.swift
//  materualAuxiliar
//
//  Created by Aluno on 25/04/2018.
//  Copyright © 2018 Aluno. All rights reserved.
//

import UIKit

class ViewController: UIViewController ,UITableViewDelegate , UITableViewDataSource{
    @IBOutlet weak var tableView: UITableView!
    let pokemon:[Poke] = [Poke(nome:"abra" , valor:1000.12 , imagemName:"abra")]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pokemon.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:"produto")!
        cell.textLabel?.text = pokemon[indexPath.row].nome
        cell.imageView?.image = UIImage(named: pokemon[indexPath.row].imagemName)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.tableView.delegate = self
        self.tableView.dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

