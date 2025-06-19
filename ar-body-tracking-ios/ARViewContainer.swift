//
//  ARViewContainer.swift
//  ar-body-tracking-ios
//
//  Created by Mohak Tamhane on 1/6/25.
//

import SwiftUI
import ARKit
import RealityKit

class BodyTrackingSessionDelegate: NSObject, ARSessionDelegate {
    static var bodySkeleton: BodySkeleton?
    static let bodySkeletonAnchor = AnchorEntity()

    func session(_ session: ARSession, didUpdate anchors: [ARAnchor]) {
        for anchor in anchors {
            if let bodyAnchor = anchor as? ARBodyAnchor {
                if let skeleton = Self.bodySkeleton {
                    skeleton.update(with: bodyAnchor)
                } else {
                    Self.bodySkeleton = BodySkeleton(for: bodyAnchor)
                    Self.bodySkeletonAnchor.addChild(Self.bodySkeleton!)
                }
            }
        }
    }
}

struct ARViewContainer: UIViewRepresentable {
    typealias UIViewType = ARView

    func makeCoordinator() -> BodyTrackingSessionDelegate {
        BodyTrackingSessionDelegate()
    }
    
    func makeUIView(context: Context) -> ARView {
        let arView = ARView(frame: .zero, cameraMode: .ar, automaticallyConfigureSession: true)

        guard ARBodyTrackingConfiguration.isSupported else {
            print("Body tracking is not supported on this device.")
            return arView
        }

        let configuration = ARBodyTrackingConfiguration()
        arView.session.run(configuration)
        arView.session.delegate = context.coordinator
        arView.scene.addAnchor(BodyTrackingSessionDelegate.bodySkeletonAnchor)

        return arView
    }

    func updateUIView(_ uiView: ARView, context: Context) {
    }
}
