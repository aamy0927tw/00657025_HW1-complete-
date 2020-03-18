//
//  ContentView.swift
//  00657025_HW1
//
//  Created by User11 on 2020/3/16.
//  Copyright © 2020 lll. All rights reserved.
//

import SwiftUI

struct Leaf: Shape {
    func path(in rect: CGRect) -> Path {
        Path(ellipseIn: CGRect(x: 0, y: 0, width: rect.width, height: rect.height)) //nose
    }
}

struct LeafView: View {
    var body: some View {
        Leaf()
            .fill(Color(red: 0, green: 0, blue: 0))
    }
}

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("background")
                .resizable()
                .scaledToFill()
                .frame(minWidth: 0, maxWidth: .infinity)
                .edgesIgnoringSafeArea(.all)
            Text("We Bare Bears")
                .position(x: 210, y: 80)
                .font(.custom("Chalkduster", size: 42))
                .shadow(radius: 8)
            Group { //Panda's and Grizz's right feet
                Path { (path) in //(Panda)painted grey
                    //right back foot
                    path.move(to: CGPoint(x: 247, y: 541))
                    path.addQuadCurve(to: CGPoint(x: 262, y: 587), control: CGPoint(x: 248, y: 585))
                    path.addQuadCurve(to: CGPoint(x: 284, y: 540), control: CGPoint(x: 279, y: 590))
                    
                    //right front foot
                    path.move(to: CGPoint(x: 100, y: 531))
                    path.addQuadCurve(to: CGPoint(x: 120, y: 585), control: CGPoint(x: 99, y: 578))
                    path.addQuadCurve(to: CGPoint(x: 141, y: 537), control: CGPoint(x: 139, y: 585))
                }.fill(Color(red: 0.35, green: 0.35, blue: 0.35))
                Path { (path) in //(Panda)black border
                    //right back foot
                    path.move(to: CGPoint(x: 247, y: 541))
                    path.addQuadCurve(to: CGPoint(x: 262, y: 587), control: CGPoint(x: 248, y: 585))
                    path.addQuadCurve(to: CGPoint(x: 284, y: 540), control: CGPoint(x: 279, y: 590))
                    
                    //right front foot
                    path.move(to: CGPoint(x: 100, y: 531))
                    path.addQuadCurve(to: CGPoint(x: 120, y: 585), control: CGPoint(x: 99, y: 578))
                    path.addQuadCurve(to: CGPoint(x: 141, y: 538), control: CGPoint(x: 139, y: 585))
                }.stroke()
                Path { (path) in //(Grizz)painted brown
                    //right back foot
                    path.move(to: CGPoint(x: 247, y: 361))
                    path.addQuadCurve(to: CGPoint(x: 262, y: 407), control: CGPoint(x: 248, y: 405))
                    path.addQuadCurve(to: CGPoint(x: 284, y: 360), control: CGPoint(x: 279, y: 410))
                    
                    //right front foot
                    path.move(to: CGPoint(x: 100, y: 351))
                    path.addQuadCurve(to: CGPoint(x: 120, y: 405), control: CGPoint(x: 99, y: 398))
                    path.addQuadCurve(to: CGPoint(x: 141, y: 357), control: CGPoint(x: 139, y: 405))
                }.fill(Color(red: 160/255, green: 110/255, blue: 75/255))
                Path { (path) in //(Grizz)black border
                    //right back foot
                    path.move(to: CGPoint(x: 247, y: 361))
                    path.addQuadCurve(to: CGPoint(x: 262, y: 407), control: CGPoint(x: 248, y: 405))
                    path.addQuadCurve(to: CGPoint(x: 284, y: 360), control: CGPoint(x: 279, y: 410))
                    
                    //right front foot
                    path.move(to: CGPoint(x: 100, y: 351))
                    path.addQuadCurve(to: CGPoint(x: 120, y: 405), control: CGPoint(x: 99, y: 398))
                    path.addQuadCurve(to: CGPoint(x: 141, y: 357), control: CGPoint(x: 139, y: 405))
                }.stroke(lineWidth: 2)
            }
            Group { //Ice bear
                Path { (path) in //painted shadow
                    //right front foot
                    path.move(to: CGPoint(x: 85, y: 702))
                    path.addQuadCurve(to: CGPoint(x: 105, y: 760), control: CGPoint(x: 84, y: 753))
                    path.addQuadCurve(to: CGPoint(x: 126, y: 747), control: CGPoint(x: 118, y: 760))
                    path.addLine(to: CGPoint(x: 126, y: 702))
                    
                    //right back foot
                    path.move(to: CGPoint(x: 247, y: 720))
                    path.addQuadCurve(to: CGPoint(x: 262, y: 762), control: CGPoint(x: 248, y: 755))
                    path.addQuadCurve(to: CGPoint(x: 284, y: 745), control: CGPoint(x: 279, y: 765))
                    path.addLine(to: CGPoint(x: 284, y: 700))
                }.fill(Color(red: 204/255, green: 215/255, blue: 211/255))
                Path { (path) in //painted white
                    //head
                    path.move(to: CGPoint(x: 108, y: 565))
                    path.addQuadCurve(to: CGPoint(x: 40, y: 620), control: CGPoint(x: 50, y: 560))
                    path.addQuadCurve(to: CGPoint(x: 8, y: 645), control: CGPoint(x: 15, y: 622))
                    path.addQuadCurve(to: CGPoint(x: 120, y: 710), control: CGPoint(x: 0, y: 690))
                    
                    //right ear
                    path.move(to: CGPoint(x: 75, y: 568))
                    path.addQuadCurve(to: CGPoint(x: 82, y: 548), control: CGPoint(x: 70, y: 552))
                    path.addQuadCurve(to: CGPoint(x: 93, y: 565), control: CGPoint(x: 93, y: 548))
                
                    //left front foot
                    path.move(to: CGPoint(x: 120, y: 701))
                    path.addQuadCurve(to: CGPoint(x: 145, y: 765), control: CGPoint(x: 120, y: 762))
                    path.addQuadCurve(to: CGPoint(x: 170, y: 705), control: CGPoint(x: 170, y: 762))
                    
                    //stomach
                    path.move(to: CGPoint(x: 169, y: 715))
                    path.addQuadCurve(to: CGPoint(x: 280, y: 714), control: CGPoint(x: 220, y: 727))
                
                    //left back foot
                    path.move(to: CGPoint(x: 279, y: 705))
                    path.addQuadCurve(to: CGPoint(x: 308, y: 765), control: CGPoint(x: 278, y: 765))
                    path.addQuadCurve(to: CGPoint(x: 331, y: 690), control: CGPoint(x: 331, y: 763))
                    
                    //bottom and back
                    path.move(to: CGPoint(x: 331, y: 705))
                    path.addQuadCurve(to: CGPoint(x: 365, y: 635), control: CGPoint(x: 365, y: 680))
                    path.addQuadCurve(to: CGPoint(x: 325, y: 570), control: CGPoint(x: 365, y: 585))
                    path.addQuadCurve(to: CGPoint(x: 128, y: 565), control: CGPoint(x: 260, y: 540))
                    path.addLine(to: CGPoint(x: 126, y: 572))
                    path.addLine(to: CGPoint(x: 110, y: 569))
                    path.addLine(to: CGPoint(x: 108, y: 565))
                    path.addLine(to: CGPoint(x: 120, y: 710))
                    path.addQuadCurve(to: CGPoint(x: 280, y: 714), control: CGPoint(x: 220, y: 727))
                    path.addLine(to: CGPoint(x: 331, y: 705))
                    
                    //tail
                    path.move(to: CGPoint(x: 335, y: 573))
                    path.addQuadCurve(to: CGPoint(x: 355, y: 563), control: CGPoint(x: 340, y: 560))
                    path.addQuadCurve(to: CGPoint(x: 355, y: 595), control: CGPoint(x: 373, y: 575))
                    path.addQuadCurve(to: CGPoint(x: 335, y: 573), control: CGPoint(x: 343, y: 578))
                }.fill(Color(red: 1, green: 1, blue: 1))
                Path { (path) in //painted white
                    //left ear
                    path.move(to: CGPoint(x: 110, y: 569))
                    path.addQuadCurve(to: CGPoint(x: 118, y: 548), control: CGPoint(x: 105, y: 552))
                    path.addQuadCurve(to: CGPoint(x: 126, y: 572), control: CGPoint(x: 138, y: 550))
                    path.addQuadCurve(to: CGPoint(x: 110, y: 569), control: CGPoint(x: 118, y: 573))
                }.fill(Color(red: 1, green: 1, blue: 1))
                Path { (path) in //black border
                    //head
                    path.move(to: CGPoint(x: 108, y: 565))
                    path.addQuadCurve(to: CGPoint(x: 40, y: 620), control: CGPoint(x: 50, y: 560))
                    path.addQuadCurve(to: CGPoint(x: 8, y: 645), control: CGPoint(x: 15, y: 622))
                    path.addQuadCurve(to: CGPoint(x: 120, y: 710), control: CGPoint(x: 0, y: 690))
                    
                    //left ear
                    path.move(to: CGPoint(x: 110, y: 569))
                    path.addQuadCurve(to: CGPoint(x: 118, y: 548), control: CGPoint(x: 105, y: 552))
                    path.addQuadCurve(to: CGPoint(x: 126, y: 572), control: CGPoint(x: 138, y: 550))
                    
                    //right ear
                    path.move(to: CGPoint(x: 75, y: 568))
                    path.addQuadCurve(to: CGPoint(x: 82, y: 548), control: CGPoint(x: 70, y: 552))
                    path.addQuadCurve(to: CGPoint(x: 93, y: 565), control: CGPoint(x: 93, y: 548))
                
                    //left front foot
                    path.move(to: CGPoint(x: 120, y: 701))
                    path.addQuadCurve(to: CGPoint(x: 145, y: 765), control: CGPoint(x: 120, y: 762))
                    path.addQuadCurve(to: CGPoint(x: 170, y: 705), control: CGPoint(x: 170, y: 762))
                    
                    //right front foot
                    path.move(to: CGPoint(x: 85, y: 702))
                    path.addQuadCurve(to: CGPoint(x: 105, y: 760), control: CGPoint(x: 84, y: 753))
                    path.addQuadCurve(to: CGPoint(x: 126, y: 747), control: CGPoint(x: 118, y: 760))
                
                    //stomach
                    path.move(to: CGPoint(x: 169, y: 715))
                    path.addQuadCurve(to: CGPoint(x: 280, y: 714), control: CGPoint(x: 220, y: 727))
                
                    //left back foot
                    path.move(to: CGPoint(x: 279, y: 705))
                    path.addQuadCurve(to: CGPoint(x: 308, y: 765), control: CGPoint(x: 278, y: 765))
                    path.addQuadCurve(to: CGPoint(x: 331, y: 690), control: CGPoint(x: 331, y: 763))
                    
                    //right back foot
                    path.move(to: CGPoint(x: 247, y: 720))
                    path.addQuadCurve(to: CGPoint(x: 262, y: 762), control: CGPoint(x: 248, y: 755))
                    path.addQuadCurve(to: CGPoint(x: 284, y: 745), control: CGPoint(x: 279, y: 765))
                
                    //bottom and back
                    path.move(to: CGPoint(x: 331, y: 705))
                    path.addQuadCurve(to: CGPoint(x: 365, y: 635), control: CGPoint(x: 365, y: 680))
                    path.addQuadCurve(to: CGPoint(x: 325, y: 570), control: CGPoint(x: 365, y: 585))
                    path.addQuadCurve(to: CGPoint(x: 128, y: 565), control: CGPoint(x: 260, y: 540))
                    
                    //tail
                    path.move(to: CGPoint(x: 335, y: 574))
                    path.addQuadCurve(to: CGPoint(x: 355, y: 563), control: CGPoint(x: 340, y: 560))
                    path.addQuadCurve(to: CGPoint(x: 355, y: 595), control: CGPoint(x: 373, y: 575))
                }.stroke(lineWidth: 2)
                
                Path(ellipseIn: CGRect(x: 44, y: 615, width: 6, height: 8)) //right eye
                Path(ellipseIn: CGRect(x: 80, y: 619, width: 6, height: 8)) //left eye
                Path { (path) in //mouth
                    path.move(to: CGPoint(x: 38, y: 675))
                    path.addQuadCurve(to: CGPoint(x: 55, y: 678), control: CGPoint(x: 44, y: 671))
                }.stroke(lineWidth: 2)
            }
            Group { //Panda
                Path { (path) in //painted white
                    //head
                    path.move(to: CGPoint(x: 108, y: 390))
                    path.addQuadCurve(to: CGPoint(x: 36, y: 445), control: CGPoint(x: 50, y: 385))
                    path.addQuadCurve(to: CGPoint(x: 6, y: 468), control: CGPoint(x: 10, y: 443))
                    path.addQuadCurve(to: CGPoint(x: 135, y: 538), control: CGPoint(x: 0, y: 520))
                    path.addQuadCurve(to: CGPoint(x: 132, y: 390), control: CGPoint(x: 166, y: 440))
                    
                    //body
                    path.move(to: CGPoint(x: 185, y: 380))
                    path.addQuadCurve(to: CGPoint(x: 183, y: 540), control: CGPoint(x: 229, y: 460))
                    path.addQuadCurve(to: CGPoint(x: 269, y: 540), control: CGPoint(x: 220, y: 545))
                    path.addQuadCurve(to: CGPoint(x: 255, y: 380), control: CGPoint(x: 299, y: 450))
                    path.addQuadCurve(to: CGPoint(x: 185, y: 380), control: CGPoint(x: 230, y: 378))
                }.fill(Color(red: 1, green: 1, blue: 1))
                Path { (path) in //painted grey
                    //left ear
                    path.move(to: CGPoint(x: 110, y: 394))
                    path.addQuadCurve(to: CGPoint(x: 118, y: 376), control: CGPoint(x: 105, y: 378))
                    path.addQuadCurve(to: CGPoint(x: 126, y: 400), control: CGPoint(x: 138, y: 378))
                    
                    //right ear
                    path.move(to: CGPoint(x: 70, y: 395))
                    path.addQuadCurve(to: CGPoint(x: 78, y: 378), control: CGPoint(x: 65, y: 382))
                    path.addQuadCurve(to: CGPoint(x: 90, y: 391), control: CGPoint(x: 88, y: 378))
                    
                    //around eyes
                    path.move(to: CGPoint(x: 40, y: 430))
                    path.addQuadCurve(to: CGPoint(x: 34, y: 452), control: CGPoint(x: 37, y: 439))
                    path.addQuadCurve(to: CGPoint(x: 50, y: 453), control: CGPoint(x: 39, y: 456))
                    path.addQuadCurve(to: CGPoint(x: 60, y: 440), control: CGPoint(x: 58, y: 448))
                    path.addQuadCurve(to: CGPoint(x: 50, y: 420), control: CGPoint(x: 65, y: 420))
                    path.addQuadCurve(to: CGPoint(x: 40, y: 430), control: CGPoint(x: 44, y: 422))
                    
                    path.move(to: CGPoint(x: 87, y: 423))
                    path.addQuadCurve(to: CGPoint(x: 75, y: 436), control: CGPoint(x: 79, y: 424))
                    path.addQuadCurve(to: CGPoint(x: 89, y: 464), control: CGPoint(x: 68, y: 460))
                    path.addQuadCurve(to: CGPoint(x: 105, y: 445), control: CGPoint(x: 108, y: 466))
                    path.addQuadCurve(to: CGPoint(x: 87, y: 423), control: CGPoint(x: 103, y: 420))
                    
                    //body
                    path.move(to: CGPoint(x: 132, y: 390))
                    path.addQuadCurve(to: CGPoint(x: 125, y: 536), control: CGPoint(x: 166, y: 440))
                    path.addQuadCurve(to: CGPoint(x: 183, y: 540), control: CGPoint(x: 150, y: 540))
                    path.addQuadCurve(to: CGPoint(x: 185, y: 380), control: CGPoint(x: 230, y: 460))
                    path.addQuadCurve(to: CGPoint(x: 132, y: 390), control: CGPoint(x: 150, y: 385))
                    
                    path.move(to: CGPoint(x: 255, y: 380))
                    path.addQuadCurve(to: CGPoint(x: 268, y: 542), control: CGPoint(x: 298, y: 450))
                    path.addQuadCurve(to: CGPoint(x: 330, y: 530), control: CGPoint(x: 300, y: 543))
                    path.addQuadCurve(to: CGPoint(x: 365, y: 453), control: CGPoint(x: 365, y: 505))
                    path.addQuadCurve(to: CGPoint(x: 325, y: 393), control: CGPoint(x: 365, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 255, y: 380), control: CGPoint(x: 290, y: 382))
                    
                    //tail
                    path.move(to: CGPoint(x: 343, y: 405))
                    path.addQuadCurve(to: CGPoint(x: 365, y: 395), control: CGPoint(x: 350, y: 390))
                    path.addQuadCurve(to: CGPoint(x: 360, y: 425), control: CGPoint(x: 380, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 343, y: 405), control: CGPoint(x: 351, y: 408))
                    
                    //left back foot
                    path.move(to: CGPoint(x: 279, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 308, y: 590), control: CGPoint(x: 278, y: 590))
                    path.addQuadCurve(to: CGPoint(x: 331, y: 515), control: CGPoint(x: 331, y: 588))
                    
                    //left front foot
                    path.move(to: CGPoint(x: 135, y: 526))
                    path.addQuadCurve(to: CGPoint(x: 160, y: 590), control: CGPoint(x: 135, y: 587))
                    path.addQuadCurve(to: CGPoint(x: 185, y: 528), control: CGPoint(x: 185, y: 587))
                }.fill(Color(red: 0.35, green: 0.35, blue: 0.35))
                Path { (path) in //black border
                    //head
                    path.move(to: CGPoint(x: 108, y: 390))
                    path.addQuadCurve(to: CGPoint(x: 36, y: 445), control: CGPoint(x: 50, y: 385))
                    path.addQuadCurve(to: CGPoint(x: 6, y: 468), control: CGPoint(x: 10, y: 443))
                    path.addQuadCurve(to: CGPoint(x: 135, y: 538), control: CGPoint(x: 0, y: 520))
                    
                    //left ear
                    path.move(to: CGPoint(x: 110, y: 394))
                    path.addQuadCurve(to: CGPoint(x: 118, y: 376), control: CGPoint(x: 105, y: 378))
                    path.addQuadCurve(to: CGPoint(x: 126, y: 400), control: CGPoint(x: 138, y: 378))
                    
                    //right ear
                    path.move(to: CGPoint(x: 70, y: 395))
                    path.addQuadCurve(to: CGPoint(x: 78, y: 378), control: CGPoint(x: 65, y: 382))
                    path.addQuadCurve(to: CGPoint(x: 90, y: 391), control: CGPoint(x: 88, y: 378))
                
                    //left front foot
                    path.move(to: CGPoint(x: 135, y: 526))
                    path.addQuadCurve(to: CGPoint(x: 160, y: 590), control: CGPoint(x: 135, y: 587))
                    path.addQuadCurve(to: CGPoint(x: 185, y: 528), control: CGPoint(x: 185, y: 587))
                
                    //stomach
                    path.move(to: CGPoint(x: 184, y: 540))
                    path.addQuadCurve(to: CGPoint(x: 280, y: 539), control: CGPoint(x: 220, y: 545))
                
                    //left back foot
                    path.move(to: CGPoint(x: 279, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 308, y: 590), control: CGPoint(x: 278, y: 590))
                    path.addQuadCurve(to: CGPoint(x: 331, y: 515), control: CGPoint(x: 331, y: 588))
                
                    //bottom and back
                    path.move(to: CGPoint(x: 330, y: 530))
                    path.addQuadCurve(to: CGPoint(x: 365, y: 453), control: CGPoint(x: 365, y: 505))
                    path.addQuadCurve(to: CGPoint(x: 325, y: 393), control: CGPoint(x: 365, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 130, y: 390), control: CGPoint(x: 230, y: 365))
                    
                    //tail
                    path.move(to: CGPoint(x: 343, y: 405))
                    path.addQuadCurve(to: CGPoint(x: 365, y: 395), control: CGPoint(x: 350, y: 390))
                    path.addQuadCurve(to: CGPoint(x: 360, y: 425), control: CGPoint(x: 380, y: 410))
                }.stroke(lineWidth: 2)
                
                Path(ellipseIn: CGRect(x: 44, y: 440, width: 6, height: 8)) //right eye
                Path(ellipseIn: CGRect(x: 82, y: 443, width: 6, height: 8)) //left eye
                Path { (path) in //mouth
                    path.move(to: CGPoint(x: 38, y: 488))
                    path.addQuadCurve(to: CGPoint(x: 55, y: 484), control: CGPoint(x: 44, y: 494))
                }.stroke(lineWidth: 2)
            }
            Group { //Grizz
                Path { (path) in //painted brown
                    //head
                    path.move(to: CGPoint(x: 108, y: 210))
                    path.addQuadCurve(to: CGPoint(x: 36, y: 265), control: CGPoint(x: 50, y: 205))
                    path.addQuadCurve(to: CGPoint(x: 6, y: 288), control: CGPoint(x: 10, y: 263))
                    path.addQuadCurve(to: CGPoint(x: 135, y: 358), control: CGPoint(x: 0, y: 340))
                    
                    //right ear
                    path.move(to: CGPoint(x: 70, y: 215))
                    path.addQuadCurve(to: CGPoint(x: 78, y: 198), control: CGPoint(x: 65, y: 202))
                    path.addQuadCurve(to: CGPoint(x: 90, y: 211), control: CGPoint(x: 88, y: 198))
                    path.addQuadCurve(to: CGPoint(x: 70, y: 215), control: CGPoint(x: 82, y: 210))
                
                    //left front foot
                    path.move(to: CGPoint(x: 135, y: 346))
                    path.addQuadCurve(to: CGPoint(x: 160, y: 410), control: CGPoint(x: 135, y: 407))
                    path.addQuadCurve(to: CGPoint(x: 185, y: 348), control: CGPoint(x: 185, y: 407))
                
                    //stomach
                    path.move(to: CGPoint(x: 184, y: 360))
                    path.addQuadCurve(to: CGPoint(x: 280, y: 359), control: CGPoint(x: 220, y: 365))
                
                    //left back foot
                    path.move(to: CGPoint(x: 279, y: 350))
                    path.addQuadCurve(to: CGPoint(x: 308, y: 410), control: CGPoint(x: 278, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 331, y: 335), control: CGPoint(x: 331, y: 408))
                
                    //bottom and back
                    path.move(to: CGPoint(x: 330, y: 350))
                    path.addQuadCurve(to: CGPoint(x: 365, y: 273), control: CGPoint(x: 365, y: 325))
                    path.addQuadCurve(to: CGPoint(x: 325, y: 213), control: CGPoint(x: 365, y: 230))
                    path.addQuadCurve(to: CGPoint(x: 130, y: 210), control: CGPoint(x: 230, y: 173))
                    path.addLine(to: CGPoint(x: 126, y: 220))
                    path.addLine(to: CGPoint(x: 110, y: 214))
                    path.addLine(to: CGPoint(x: 108, y: 210))
                    path.addLine(to: CGPoint(x: 135, y: 358))
                    path.addLine(to: CGPoint(x: 184, y: 360))
                    path.addLine(to: CGPoint(x: 280, y: 359))
                    
                    //tail
                    path.move(to: CGPoint(x: 343, y: 225))
                    path.addQuadCurve(to: CGPoint(x: 365, y: 215), control: CGPoint(x: 350, y: 210))
                    path.addQuadCurve(to: CGPoint(x: 360, y: 245), control: CGPoint(x: 380, y: 230))
                    path.addQuadCurve(to: CGPoint(x: 343, y: 225), control: CGPoint(x: 352, y: 228))
                }.fill(Color(red: 160/255, green: 110/255, blue: 75/255))
                Path { (path) in
                    //left ear
                    path.move(to: CGPoint(x: 110, y: 214))
                    path.addQuadCurve(to: CGPoint(x: 118, y: 196), control: CGPoint(x: 105, y: 198))
                    path.addQuadCurve(to: CGPoint(x: 126, y: 220), control: CGPoint(x: 138, y: 198))
                    path.addQuadCurve(to: CGPoint(x: 110, y: 214), control: CGPoint(x: 118, y: 225))
                }.fill(Color(red: 160/255, green: 110/255, blue: 75/255))
                Path { (path) in //black border
                    //head
                    path.move(to: CGPoint(x: 108, y: 210))
                    path.addQuadCurve(to: CGPoint(x: 36, y: 265), control: CGPoint(x: 50, y: 205))
                    path.addQuadCurve(to: CGPoint(x: 6, y: 288), control: CGPoint(x: 10, y: 263))
                    path.addQuadCurve(to: CGPoint(x: 135, y: 358), control: CGPoint(x: 0, y: 340))
                    
                    //left ear
                    path.move(to: CGPoint(x: 110, y: 214))
                    path.addQuadCurve(to: CGPoint(x: 118, y: 196), control: CGPoint(x: 105, y: 198))
                    path.addQuadCurve(to: CGPoint(x: 126, y: 220), control: CGPoint(x: 138, y: 198))
                    
                    //right ear
                    path.move(to: CGPoint(x: 70, y: 215))
                    path.addQuadCurve(to: CGPoint(x: 78, y: 198), control: CGPoint(x: 65, y: 202))
                    path.addQuadCurve(to: CGPoint(x: 90, y: 211), control: CGPoint(x: 88, y: 198))
                
                    //left front foot
                    path.move(to: CGPoint(x: 135, y: 346))
                    path.addQuadCurve(to: CGPoint(x: 160, y: 410), control: CGPoint(x: 135, y: 407))
                    path.addQuadCurve(to: CGPoint(x: 185, y: 348), control: CGPoint(x: 185, y: 407))
                
                    //stomach
                    path.move(to: CGPoint(x: 184, y: 360))
                    path.addQuadCurve(to: CGPoint(x: 280, y: 359), control: CGPoint(x: 220, y: 365))
                
                    //left back foot
                    path.move(to: CGPoint(x: 279, y: 350))
                    path.addQuadCurve(to: CGPoint(x: 308, y: 410), control: CGPoint(x: 278, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 331, y: 335), control: CGPoint(x: 331, y: 408))
                
                    //bottom and back
                    path.move(to: CGPoint(x: 330, y: 350))
                    path.addQuadCurve(to: CGPoint(x: 365, y: 273), control: CGPoint(x: 365, y: 325))
                    path.addQuadCurve(to: CGPoint(x: 325, y: 213), control: CGPoint(x: 365, y: 230))
                    path.addQuadCurve(to: CGPoint(x: 130, y: 210), control: CGPoint(x: 230, y: 173))
                    
                    //tail
                    path.move(to: CGPoint(x: 343, y: 225))
                    path.addQuadCurve(to: CGPoint(x: 365, y: 215), control: CGPoint(x: 350, y: 210))
                    path.addQuadCurve(to: CGPoint(x: 360, y: 245), control: CGPoint(x: 380, y: 230))
                }.stroke(lineWidth: 2)
                
                Path(ellipseIn: CGRect(x: 42, y: 260, width: 6, height: 8)) //right eye
                Path(ellipseIn: CGRect(x: 78, y: 263, width: 6, height: 8)) //left eye
                Path { (path) in //mouth
                    path.move(to: CGPoint(x: 38, y: 304))
                    path.addQuadCurve(to: CGPoint(x: 55, y: 303), control: CGPoint(x: 44, y: 308))
                }.stroke(lineWidth: 2)
            }
            Group { //noses
                LeafView()
                    .frame(width: 28, height: 15)
                    .offset(x: -170, y: 229)
                LeafView()
                    .frame(width: 28, height: 15)
                    .offset(x: -174, y: 54)
                LeafView()
                    .frame(width: 28, height: 15)
                    .offset(x: -170, y: -127)
            }
            Group {
                Path { (path) in
                    path.move(to: CGPoint(x: 300, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 298, y: 393), control: CGPoint(x: 295, y: 400))
                    path.move(to: CGPoint(x: 310, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 310, y: 393), control: CGPoint(x: 306, y: 400))
                    path.move(to: CGPoint(x: 155, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 153, y: 393), control: CGPoint(x: 150, y: 400))
                    path.move(to: CGPoint(x: 165, y: 410))
                    path.addQuadCurve(to: CGPoint(x: 164, y: 393), control: CGPoint(x: 160, y: 400))
                    path.move(to: CGPoint(x: 156, y: 589))
                    path.addQuadCurve(to: CGPoint(x: 152, y: 570), control: CGPoint(x: 149, y: 585))
                    path.move(to: CGPoint(x: 166, y: 589))
                    path.addQuadCurve(to: CGPoint(x: 164, y: 570), control: CGPoint(x: 159, y: 585))
                    path.move(to: CGPoint(x: 300, y: 590))
                    path.addQuadCurve(to: CGPoint(x: 298, y: 570), control: CGPoint(x: 295, y: 580))
                    path.move(to: CGPoint(x: 312, y: 590))
                    path.addQuadCurve(to: CGPoint(x: 310, y: 570), control: CGPoint(x: 307, y: 580))
                    path.move(to: CGPoint(x: 314, y: 763))
                    path.addQuadCurve(to: CGPoint(x: 312, y: 743), control: CGPoint(x: 309, y: 755))
                    path.move(to: CGPoint(x: 300, y: 763))
                    path.addQuadCurve(to: CGPoint(x: 298, y: 743), control: CGPoint(x: 295, y: 755))
                    path.move(to: CGPoint(x: 264, y: 763))
                    path.addQuadCurve(to: CGPoint(x: 262, y: 745), control: CGPoint(x: 260, y: 755))
                    path.move(to: CGPoint(x: 273, y: 762))
                    path.addQuadCurve(to: CGPoint(x: 273, y: 745), control: CGPoint(x: 270, y: 755))
                    path.move(to: CGPoint(x: 103, y: 758))
                    path.addQuadCurve(to: CGPoint(x: 102, y: 740), control: CGPoint(x: 99, y: 749))
                    path.move(to: CGPoint(x: 115, y: 758))
                    path.addQuadCurve(to: CGPoint(x: 114, y: 740), control: CGPoint(x: 110, y: 749))
                    path.move(to: CGPoint(x: 140, y: 762))
                    path.addQuadCurve(to: CGPoint(x: 140, y: 745), control: CGPoint(x: 136, y: 749))
                    path.move(to: CGPoint(x: 153, y: 762))
                    path.addQuadCurve(to: CGPoint(x: 154, y: 745), control: CGPoint(x: 150, y: 749))
                }.stroke(lineWidth: 2)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
