//
//  EscolherImagem.swift
//  vendoImg
//
//  Created by user182331 on 10/21/20.
//

import UIKit

class EscolherImagem: NSObject, UIImagePickerControllerDelegate,
                      UINavigationControllerDelegate {
    
    var selecionador = UIImagePickerController();
    
    // criar um alerta
    var alerta = UIAlertController(title: "Escolha uma opcao", message: nil, preferredStyle: .actionSheet)
    
    // cria uma viewController
    var viewController: UIViewController?
    
    //cria uma callback
    var retornoSelecionador: ((UIImage) -> ())?;
    
    func selecionadorImagem(_ viewController: UIViewController, _ retorno: @escaping ((UIImage) -> ())){
        
        retornoSelecionador = retorno
        
        self.viewController = viewController
        
        //cria uma acao para galeria deimagens
        let galeria = UIAlertAction(title: "Galeria", style: .default){
            UIAlertAction in
            self.abrirGaleria()
        }
        let cancelar = UIAlertAction(title: "Cancela", style: .default){
            UIAlertAction in
           
        }
        
        // declara que os novos delegate do picker sao os metodos abaixo
        
        selecionador.delegate = self
        
        alerta.addAction(galeria)
        alerta.addAction(cancelar)
        
        //exibe alerta na tela
        alerta.popoverPresentationController?.sourceView = self.viewController!.view
        viewController.present(alerta, animated: true, completion: nil)
    
    }
    
    func abrirGaleria(){
        
        alerta.dismiss(animated: true, completion: nil)
        
        selecionador.sourceType = .photoLibrary
        
        self.viewController?.present(selecionador, animated: true, completion: nil)
        
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true, completion: nil)
        
        guard let image = info[.originalImage] as? UIImage else {
            fatalError("Esperava uma imagem mas veiuo \(info)")
        }
        retornoSelecionador?(image)
    }
    
}
