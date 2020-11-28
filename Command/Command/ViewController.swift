//
//  ViewController.swift
//  Command
//
//  Created by itsector on 18/11/2020.
//  Copyright © 2020 drohobytskyy. All rights reserved.
//

import UIKit

protocol BaseCommand {
    func undo() -> String
    func forward(_ str: String)
}

class StringUndoCommand: BaseCommand {
    private var originalString: String
    private var currentString: String
    
    init(argument: String) {
        originalString = argument
        currentString = argument
    }
    
    func printString() {
        print(currentString)
    }
    
    func undo() -> String {
        if !currentString.isEmpty {
            currentString.removeLast()
            printString()
        }
        return currentString
    }
    
    func forward(_ str: String) {
        currentString.append(str)
        printString()
    }
}

class CommandExecutor {
    private var commandArray = [BaseCommand]()
    
    func addCommand(command: BaseCommand) {
        commandArray.append(command)
    }
    
    func forward(_ str: String) {
        for command in commandArray {
            command.forward(str)
        }
    }
    
    func undoLast() -> String {
        var title = String()
        for command in commandArray {
            title = command.undo()
        }
        return title
    }
}

class ViewController: UIViewController {

    @IBOutlet weak var textFiled: UITextField!
    
    let commandExecutor = CommandExecutor()
    var cmdUndo: StringUndoCommand?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textFiled.delegate = self
    }

    @IBAction func undoAction(_ sender: Any) {
        textFiled.text = commandExecutor.undoLast()
    }
}

extension ViewController: UITextFieldDelegate {
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        guard let text = textFiled.text else { return true }
        cmdUndo = StringUndoCommand(argument: text)
        commandExecutor.addCommand(command: cmdUndo!)
        commandExecutor.forward(text)
        return true
    }
}

