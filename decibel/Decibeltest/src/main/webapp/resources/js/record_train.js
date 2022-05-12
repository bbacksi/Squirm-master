const checkbox = document.getElementById("cb-1");

const audioCtx = new (window.AudioContext || window.webkitAudioContext)(); // 오디오 컨텍스트 정의

const analyser = audioCtx.createAnalyser();
const distortion = audioCtx.createWaveShaper();
const gainNode = audioCtx.createGain();
const biquadFilter = audioCtx.createBiquadFilter();
let b = 0;

function click_s() {
  var h = $('path[d="M10 10L90 10M90 8M90 12"]:hidden');
  h[0].style.display = "block";
}

var traintext = new Array(
  "고생 했어",
  "고생 했어",
    "사랑 해요",
  "사랑 해요",
  
  "응원 할게요",
  "응원 할게요",
  "축하 해요",
  "축하 해요",
  "행복 해요",
  "행복 해요",
  "다음에 꼭 봐요",
  "다음에 꼭 봐요",
  "엄마 아빠 사랑해요",
  "엄마 아빠 사랑해요",
  "정말 고마워",
  "정말 고마워",
  "다시 만나요",
  "다시 만나요",
  "축하 해요",
  "축하 해요",
  "응원 할게요",
  "응원 할게요",
  "메리 크리스마스",
  "메리 크리스마스",
  "새해복 많이",
  "새해복 많이",
  "행복해요",
  "행복해요",
  "고생했어",
  "고생했어"
);

var number_list = new Array(
  "1/15",
  "1/15",
  "2/15",
  "2/15",
  "3/15",
  "3/15",
  "4/15",
  "4/15",
  "5/15",
  "5/15",
  "6/15",
  "6/15",
  "7/15",
  "7/15",
  "8/15",
  "8/15",
  "9/15",
  "9/15",
  "10/15",
  "10/15",
  "11/15",
  "11/15",
  "12/15",
  "12/15",
  "13/15",
  "13/15",
  "14/15",
  "14/15",
  "15/15",
  "15/15"
);
self.setTimeout("firstchange()",2100); // 초 지정
function setInnerHTML() {
  const element = document.getElementById("train_text_div");
  element.innerHTML =
    "<div style= color: black; font-family: 'Gowun Dodum', sans-serif;>" +
    traintext[b] +
    "<div>";
  b++; // 바뀌게 하는코드
}

function firstchange (){
const element = document.getElementById("train_text_div");
element.innerHTML =
    "<div style= color: black; font-family: 'Gowun Dodum', sans-serif;>" +
    traintext[b] +
    "<div>";
      const element1 = document.getElementById("list_number");
  element1.innerHTML =
    "<div style= color: black; font-family: 'Gowun Dodum', sans-serif font-size: larger; font-weight: bold;>" +
    number_list[b] +
    "<div>";
    
  b++; // 바뀌게 하는코드


}




function setInnerNUMBER() {
  const element1 = document.getElementById("list_number");
  element1.innerHTML =
    "<div style= color: black; font-family: 'Gowun Dodum', sans-serif font-size: larger; font-weight: bold;>" +
    number_list[b] +
    "<div>";
  b++; // 바뀌게 하는코드
console.log(b)
  if (b == 29) {
    self.setTimeout("movemain()",1000);
  }
}
function movemain() {

  location.href = "loading.do";
  
}

function makeSound(stream) {
  const source = audioCtx.createMediaStreamSource(stream);

  source.connect(analyser);
  analyser.connect(distortion);
  distortion.connect(biquadFilter);
  biquadFilter.connect(gainNode);
  gainNode.connect(audioCtx.destination); // connecting the different audio graph nodes together
  analyser.connect(audioCtx.destination);
}

if (navigator.mediaDevices) {
  console.log("getUserMedia supported.");

  const constraints = {
    audio: true,
  };
  let chunks = [];

  navigator.mediaDevices
    .getUserMedia(constraints)
    .then((stream) => {
      const mediaRecorder = new MediaRecorder(stream);

      checkbox.addEventListener("change", (event) => {
        //체크박스 사용할떄 쓰는 코드
        if (event.currentTarget.checked) {
          mediaRecorder.start(); //녹음시작
          console.log(mediaRecorder.state); //상태
          console.log("recorder started"); //로그표시
        } else {
          mediaRecorder.stop(); //녹음종료
          console.log(mediaRecorder.state);
          console.log("recorder stopped");
          setInnerHTML();
          click_s();
          setInnerNUMBER();
        }
      });

      // record.onclick = () => {  //버튼 사용시 이용하던 코드
      //     mediaRecorder.start()//녹음시작
      //     console.log(mediaRecorder.state)//상태
      //     console.log("recorder started")//로그표시
      //     //record.style.background = "red" css바꾸는거
      //     //record.style.color = "black"
      // }

      // stop.onclick = () => {//온클릭
      //     mediaRecorder.stop()//녹음종료
      //     console.log(mediaRecorder.state)
      //     console.log("recorder stopped")
      //     //record.style.background = ""
      //     //record.style.color = ""
      // }

      mediaRecorder.onstop = (e) => {
        console.log("data available after MediaRecorder.stop() called.");
        ///////나중에 전송 성공하면 지워도 되는부분들 확인할것
        const clipContainer = document.createElement("article");
        const audio = document.createElement("audio");
        clipContainer.classList.add("clip");
        audio.setAttribute("controls", "auto");
        clipContainer.appendChild(audio);

        const blob = new Blob(chunks, {
          type: "audio/wav codecs=opus",
        });
        chunks = [];
        const audioURL = URL.createObjectURL(blob);
        console.log(audioURL);
        audio.src = audioURL;
        console.log("recorder stopped");
        const sound = new File([audioURL], "soundBlob", {
          lastModified: new Date().getTime(),
          type: "audio",
        });
        console.log(sound);

        let form = new FormData();
        form.append("file", blob, traintext[b]);

        $.ajax({
          type: "POST",
          url: "http://127.0.0.1:5003/train", //flask server url로 바꿔주세요! ---> 막혀있을수도 있다는거    http://localhost:8081/temp/temp01
          data: form, // Our pretty new form
          cache: false,
          processData: false, // tell jQuery not to process the data
          contentType: false, // audio/wav ---> 변경하는 방법도 고려해볼 것 (안된다면!!!)
        }).done(function () {
          console.log("성공?");
        });
      };

      mediaRecorder.ondataavailable = (e) => {
        chunks.push(e.data);
      };
    })
    .catch((err) => {
      console.log("The following error occurred: " + err);
    });
}
