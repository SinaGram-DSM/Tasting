//
//  ViewController.swift
//  BoilerPlateCode
//
//  Created by 문지수 on 2020/06/26.
//  Copyright © 2020 문지수. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController, AVAudioPlayerDelegate {
    
    var player: AVAudioPlayer!
    var timer: Timer!
    
    //IBOutlet 직접 해보기~!
    
    
    func intializePlayer() {
        
        //음악 파일을 넣어보기
        
        //예외처리 do-catch 활용해서 해보기
        
        //슬라이더 설정해보기
        
    }
    
    func updateTimeLableText(time: TimeInterval) {
        
        //재생되는 시간에 맞게 시간을 움직이게 해보기
    }
    
    func makeAndFireTimer() {
        
        //슬라이더를 움직이게 하는 함수 작성해보기
        
    }
    
    func invalidateTimer() {
        
        //타이머를 해제하고 음악을 일시정지 시키는 함수 작성해보기
    }
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.intializePlayer()
    }
    
    @IBAction func touchUpPlayButton(_ sender: UIButton) {
        //버튼을 눌렀을때 동작하는 액션에 대한 코드 작성해보기
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        
        //슬라이더를 움직였을때 동작하는 액션에 대한 코드 작성해보기
    }
    
    //AVAudioPlayerDelegate 오류
    //  func audioPlayerDecodeErrorDidOccur(_ player: AVAudioPlayer, error: Error?) {
    //    guard let error: Error = error else {
    //      print(“오디오 플레이어 디코드 오류 발생“)
    //      return
    //    }
    //
    //    let message: String
    //    message = “오디오 플레이어 오류 발생 \(error.localizedDescription)”
    //
    //    let alert: UIAlertController = UIAlertController(title: “알림“, message: message, preferredStyle: UIAlertController.Style.alert)
    //
    //    let okAction: UIAlertAction = UIAlertAction(title: “확인“, style: UIAlertAction.Style.default, handler: { (action: UIAlertAction)-> Void in
    //      self.dismiss(animated: true, completion: nil)
    //    })
    //    alert.addAction(okAction)
    //    self.present(alert, animated: true, completion: nil)
    //  }
    
    func audioPlayerDidFinishPlaying(_ player: AVAudioPlayer, successfully flag: Bool) {
        //노래가 끝나면 시간이 다시 00:00:00:으로 돌아가게 하는 코드 작성해보기
    }


}

