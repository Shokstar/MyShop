//
//  SceneView.swift
//  GEILdesignt_Shop
//
//  Created by Timo Schönbeck on 01.03.23.
//



import SwiftUI
import SceneKit

struct SceneView: UIViewRepresentable {
    
    func makeUIView(context: Context) -> SCNView {
        let sceneView = SCNView()
        let scene = SCNScene(named: "art.scnassets/your_3d_object.scn")!
        sceneView.scene = scene
        return sceneView
    }
    
    func updateUIView(_ view: SCNView, context: Context) {
        // Update the view if needed
    }
}



struct SceneView_Previews: PreviewProvider {
    static var previews: some View {
        SceneView()
    }
}
