import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<List> data=[
  ["الحـمــدُ للـــهِ العـــليِّ الأَرْفَــق","...","وجَــامِــعِ الأَشْـيــاءِ وَالمُـفَــرِّقِ",],
  ["ذِي النِّـعَـمِ الواسِعَـةِ الْغَـزِيـــرَه","...","والحِـكَــمِ البـاهِــرَةِ الكَـثـيـــرَه"],
  ["ثُــمَّ الصَّــلاةُ مـعْ سَــلامٍ دَائــمِ","...","عَـلى الـرَّسـولِ القُرَشِـيِّ الخاتـَمِ"],
  ["وَآلِــهِ وصَـحــبِـــــهِ الأَبـْـــرارِ","...","الحـائِــزِي مَـراتِـبَ الفَــخَـــارِ"],
  ["اِعْلَـمْ هُـدِيـتَ أَنَّ أفـضـلَ الْمِنَـنْ","...","عِلمٌ يُزيـلُ الشَّـكَّ عَنْـكَ وَالـدَّرَنْ"],
  ["وَيَكْشِـفُ الحـقَّ لِـذِي القُــلُـوبِ","...","وَيُوصِـلُ العَبْـدَ إِلـى المطْلُـــوبِ"],
  ["فَاحْـرِصْ عـلى فَهْمِـكَ للقَواعِـدِ","...","جَـامِـعَـةِ المَسَــائِــلِ الشَّــــوارِدِ"],
  ["لِتَـرْتَقِي في العِلْـمِ خَيْـرَ مُرتَـقَــى","...","وتَقْتَفِـي سُبْـلَ الَّـذِي قَــدْ وُفِّقَــا"],
  ["وَهَــذِهِ قَـواعِـــدٌ نَـظَـمْـتُـهـــا","...","مِنْ كُتْبِ أَهْلِ الْعِلْمِ قَـدْ حَصَّلْتُهـا"],
  ["جَـزاهُـمُ المَــوْلَى عَـظِيـمَ الأَجْــرِ","...","وَالْعَـفْــوَ مَــعْ غُفْـرانِــهِ وَالْبِــرِّ"],
  ["وَنِيَّتُنا شَــرْطٌ لِـسَـائِــر الْعَـمَـــلْ","...","بِهَــا الصَّـلاحُ وَالفَسَــادُ لِلْعَـمَـلْ"],
  ["الدِّيــنُ مَـبْـنِــيٌّ عَـلَى المَصـالِــحِ","...","فـي جَـلْبِـهَـا وَالـدَّرْءِ لِلْقَبـائِــحِ"],
  ["فَـإِنْ تَــزاحَــمْ عَـدَدُ المَصـالِــحِ","...","يُـقــدَّمُ الأَعْــلَى مِـنَ المَصَــالِــحِ"],
  ["وَضِـدُّهُ تَـزاحُـمُ الـمَــفَــاسِـــدِ","...","يُـرْتَـكَـبُ الأَدْنَـى مِـنَ المَفَـاسِـدِ"],
  ["قَــاعِـــدَةُ الشَّريعـــةِ التَّيْسِـيـرُ","...","فـِي كُـلِّ أَمْــرٍ نَـابَــهُ تَـعْـسِـيــرُ"],
  ["وَلَـيْـسَ وَاجِــبٌ بِـلا اقْــتِــدَارِ","...","وَلاَ مُـحَـــرَّمٌ مَــعَ اضْــطِـــرارِ"],
  ["وَكُـلُّ مَحْـظُــورٍ مَـعَ الضَّــرُورَهْ","...","بِقَــدْرِ مَــا تَحْتَــاجُــهُ الضَّــرُورَهْ"],
  ["وَتَرْجِــعُ الْأَحْـكـامُ لِـلْـيَـقِـيـنِ","...","فَــلَا يُــزِيــلُ الشَّــكُّ لِلْيَـقِـيــنِ"],
  ["وَالْأَصْـلُ فِي مِيـاهِنَــا الطَّهَــارَهْ ","...","وَالْأَرْضِ وَالثِّيـابِ وَالْـحِـجــارَهْ"],
  ["وَالْأَصْـلُ فِي الأَبْضاعِ وَاللُّحُـومِ","...","وَالنَّفْـسِ وَالْأَمْــوالِ لِلْمَعْـصُــومِ"],
  ["تَـحْريمُـهـا حَتَّـى يَجِــيءَ الحِــلُّ","...","فَـافْـهَـمْ هَـداكَ اللـهُ مَــا يُـمَــلُّ"],
  ["وَالْأَصْـلُ فِي عَـادَاتِنَــا الْإِبَـاحَـهْ","...","حَتَّـى يَجِــيءَ صَــارِفُ الْإِبـاحَـهْ"],
  ["وَلَيْـسَ مَشْـرُوعًـا مِـنَ الأُمُــورْ","...","غَيْـرُ الَّـذِي فِي شَـرْعِنَـا مَـذْكُــورْ"],
  ["وَسَـائِــلُ الْأُمـورِ كَـالمَقـاصِــدِ","...","وَاحْكُـمْ بِهَـذَا الحُـكْـمِ لِلـزَّوائِــدِ"],
  ["وَالخَـطَـأْ والإِكْـرَاهُ وَالـنِّـسْـيَــانُ","...","أَسْقَـطَـهُ مَعْبُــودُنَــا الـرَّحْـمَــنُ"],
  ["لَكِـنْ مَـعَ الإتلافِ يَثْبُـتُ الْبَـدَلْ","...","وَيَنْتَفِــي التَّـأْثِيـمُ عَنْـهُ وَالـزَّلَــلْ"],
  ["وَمِنْ مَسـائِـلِ الْأَحْكَــامِ فِي التَّبَـعْ","...","يَـثْـبُـتُ لا إِذَا اسْتَـقَــلَّ فَـوَقَــعْ"],
  ["وَالْعُــرْفُ مَـعْـمُــولٌ بِـهِ إِذَا وَرَدْ","...","حُكْمٌ مِنَ الشَّـرْعِ الشَّرِيفِ لَمْ يُحَـدْ"],
  ["مُعـاجِـلُ المَحْـظــورِ قَـبْـلَ آنِــهِ","...","قَـدْ بَـاءَ بِالخُسْـرانِ مَـعْ حِـرْمـانِـهِ"],
  ["وَإِنْ أَتَى التَّحْريمُ فِي نَفْسِ الْعَمَـلْ","...","أَوْ شَـرْطِــهِ فَـذُو فَسَـادٍ وَخَـلَـلْ"],
  ["وَمُتْـلِـفٌ مُـؤْذِيـهِ لَيْـسَ يَضْمَــنُ","...","بَعْـدَ الدِّفـاعِ بِالَّتِـي هِـيَ أَحْسَـنُ"],
  ["وَ(أَلْ) تُفِيـدُ الْكُـلَّ فـِي الْعُـمُــومِ","...","فِي الجَمْــعِ وَالإِفْــرادِ كَالْعَــلِيـمِ"],
  ["وَالنَّـكِـراتُ فـِي سِـيَـاقِ النَّـفْــيِ","...","تُعْطِـي الْعُمُومَ أَوْ سِيـاقِ النَّهْــيِ"],
  ["كَذاكَ (مَـنْ) وَ(مَـا) تُفيـدانِ مَعَـا ","...","كُلَّ الْعُمـومِ يَـا أُخَــيَّ فَاسْمَـعَــا"],
  ["وَمِثْـلُـــهُ المـُفْـــرَدُ إِذْ يُـضـــافُ","...","فَافْهَـمْ هُدِيتَ الرُّشْـدَ ما يُضــافُ"],
  ["وَلا يَتِــمُّ الحُكْــمُ حَتَّـى تَجْتَمِــعْ","...","كُلُّ الشُّـرُوطِ وَالمَـوانِـعْ تَـرْتَـفِــعْ"],
  ["وَمَـنْ أَتَى بِمَـا عَـلَيْـهِ مِـنْ عَمَــلْ","...","قَـدِ اسْتَحَـقَّ مَـالَـهُ عَـلَى الْعَـمَــلْ"],
  ["وَيُفْعَــلُ الْبَعْــضُ مِــنْ المَـأْمُـورِ","...","إِنْ شَــقَّ فِعْــلُ سَــائِـرِ المَـأْمُــورِ"],
  ["وَكُــلمَــا نَشَــا عَــنِ المـَـأْذُونِ","...","فَــذَاكَ أَمْــرٌ لَيْــسَ بِـالمَضْـمُــونِ"],
  ["وَكُــلُّ حُكْـمٍ دَائِــرٍ مَــعْ عِلَّتِــهِ","...","وَهْـيَ الَّتِي قَـدْ أَوْجَبَـتْ لِشِـرْعَتِـهِ"],
  ["وُكُــلُّ شَــرْطٍ لَازِمٌ لِلْـعَــاقِـــدِ","...","فِي الْبَيْــعِ وَالنِّـكَـاحِ وَالمْقَـاصِـــدِ"],
  ["إِلَّا شُـرُوطًــا حَـلَّلَـتْ مُحـَـرَّمَــا","...","أَوْ عَكْسَــهُ فَبَـاطِـلاتٌ فَـاعْـلَـمَـا"],
  ["تُسْتَعْمَــلُ الْقُـرْعَــةُ عِنْـدَ المُبْهَـمِ","...","مِـنَ الحُقُــوقِ أَوْ لَـدَى التَّـزَاحُـمِ"],
  ["وَإِنْ تَسَـاوَى الْعَمَــلانِ اجْتَمَعَــا","...","وَفُــعِــــلَ أحدُهُمـا فَـاسْـتَمِـعَـا"],
  ["وَكُــلُّ مَشْغُــولٍ فَــلَا يُشَـغَّـــلُ","...","مِثـالُــهُ المَـرْهُــونُ وَالـمـُسَـبَّــلُ"],
  ["وَمَـنْ يُـؤَدِّ عَـنْ أَخِـيــهِ وَاجِـبَــا","...","لَــهُ الـرُّجُـوعِ إِنْ نَـوَى يُـطـالِبَــا"],
  ["وَالْـوَازِعُ الطَّبْعِـي عَـنِ الْعِصْيـانِ","...","كَـالـوَازِعِ الشَّـرْعِـي بِـلَا نُـكْـرَانِ"],
  ["وَالـحَـمْــدُ للـهِ عَـلـَى التَّـمَــامِ ","...","فـِي الْـبَـدْءِ وَالـخِـتـامِ وَالــدَّوامِ"],
  ["ثُـمَّ الصَّــلاةُ مَـعْ سَـلامٍ شَـائِــعِ","...","عَلَى النَّبِــي وَصَحْـبِــهِ وَالتَّـابِــعِ"],
  ];
  final player = AudioPlayer();
  Duration duration= const Duration();
  Duration position= const Duration();
  bool isloop = false;
  bool isopen =false;
  bool isshuffle = false;
  bool isplay= true;
  int index =0;
Future<void> playShuffle(int d) async {
    final playlist = ConcatenatingAudioSource(
      useLazyPreparation: true,
      shuffleOrder: DefaultShuffleOrder(),
      children: [
        AudioSource.asset("assets/Audio/0.MP3"),
        AudioSource.asset("assets/Audio/1.MP3"),
        AudioSource.asset("assets/Audio/2.MP3"),
        AudioSource.asset("assets/Audio/3.MP3"),
        AudioSource.asset("assets/Audio/4.MP3"),
        AudioSource.asset("assets/Audio/5.MP3"),
        AudioSource.asset("assets/Audio/6.MP3"),
        AudioSource.asset("assets/Audio/7.MP3"),
        AudioSource.asset("assets/Audio/8.MP3"),
        AudioSource.asset("assets/Audio/9.MP3"),
        AudioSource.asset("assets/Audio/10.MP3"),
        AudioSource.asset("assets/Audio/11.MP3"),
        AudioSource.asset("assets/Audio/12.MP3"),
        AudioSource.asset("assets/Audio/13.MP3"),
        AudioSource.asset("assets/Audio/14.MP3"),
        AudioSource.asset("assets/Audio/15.MP3"),
        AudioSource.asset("assets/Audio/16.MP3"),
        AudioSource.asset("assets/Audio/17.MP3"),
        AudioSource.asset("assets/Audio/18.MP3"),
        AudioSource.asset("assets/Audio/19.MP3"),
        AudioSource.asset("assets/Audio/20.MP3"),
        AudioSource.asset("assets/Audio/21.MP3"),
        AudioSource.asset("assets/Audio/22.MP3"),
        AudioSource.asset("assets/Audio/23.MP3"),
        AudioSource.asset("assets/Audio/24.MP3"),
        AudioSource.asset("assets/Audio/25.MP3"),
        AudioSource.asset("assets/Audio/26.MP3"),
        AudioSource.asset("assets/Audio/27.MP3"),
        AudioSource.asset("assets/Audio/28.MP3"),
        AudioSource.asset("assets/Audio/29.MP3"),
        AudioSource.asset("assets/Audio/30.MP3"),
        AudioSource.asset("assets/Audio/31.MP3"),
        AudioSource.asset("assets/Audio/32.MP3"),
        AudioSource.asset("assets/Audio/33.MP3"),
        AudioSource.asset("assets/Audio/34.MP3"),
        AudioSource.asset("assets/Audio/35.MP3"),
        AudioSource.asset("assets/Audio/36.MP3"),
        AudioSource.asset("assets/Audio/37.MP3"),
        AudioSource.asset("assets/Audio/38.MP3"),
        AudioSource.asset("assets/Audio/39.MP3"),
        AudioSource.asset("assets/Audio/40.MP3"),
        AudioSource.asset("assets/Audio/41.MP3"),
        AudioSource.asset("assets/Audio/42.MP3"),
        AudioSource.asset("assets/Audio/43.MP3"),
        AudioSource.asset("assets/Audio/44.MP3"),
        AudioSource.asset("assets/Audio/45.MP3"),
        AudioSource.asset("assets/Audio/46.MP3"),
        AudioSource.asset("assets/Audio/47.MP3"),
        AudioSource.asset("assets/Audio/48.MP3"),
      ],
    );
    await player.setAudioSource(playlist,initialIndex: d, initialPosition: Duration.zero, preload: true);
    await player.play();
  }

setUp() async {
    player.positionStream.listen((pos) {
      setState(() {
        position = pos;
      });
    });
    player.durationStream.listen((dur) {
      setState(() {
        duration = dur!;
      });
    });
    player.playerStateStream.listen((state){
      if (state.processingState == ProcessingState.completed) {
        player.stop();
        isopen = false;
      }
    }); 
  }

  @override
  Widget build(BuildContext context) {   
    final  responsive = MediaQuery.of(context).orientation;   
    double width = MediaQuery.of(context).size.width;
    double textResW = width*0.043;
    double subtextRes = width/30;
    double textResT = width/40;
    return Scaffold(
      backgroundColor:  Colors.amber[100],
      bottomNavigationBar:isopen==true? Container(
        height: 110,
        decoration:  BoxDecoration(
          color: Colors.lime[200],
           borderRadius: const BorderRadius.only(topLeft: Radius.circular(17),topRight: Radius.circular(17)),
           border: Border.all(width: 3,color: Colors.teal[300]!,strokeAlign: BorderSide.strokeAlignOutside,style: BorderStyle.solid)
        ),
        child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding:  const EdgeInsets.only(top: 5,right: 10,left: 10),
                    child: Row(
                      children: [
                    Expanded(
                      flex: 4,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                                Text("${position.inSeconds.toDouble()}",style: TextStyle(color: Colors.teal[700],fontSize: 17)),
                                Expanded(
                                  child: Slider(
                                    inactiveColor: Colors.black12,
                                      activeColor: Colors.amber[400],
                                      thumbColor: Colors.amber[800],
                                      value: position.inSeconds.toDouble(),
                                      max: duration.inSeconds.toDouble(),
                                      onChanged: (position) {
                                        player.seek(
                                            Duration(seconds: position.toInt()));
                                      }),
                                ),
                                Text("${duration.inSeconds.toDouble()}",style: TextStyle(color: Colors.teal[700],fontSize: 17)),
                              ],
                      ),
                    ),
                    const SizedBox(width: 7),
                          IconButton(
                              onPressed: () async {
                                setState(() {
                                  isplay = true;
                                });
                                if (isplay = true) {
                                  player.play();
                                }
                                if (isloop == false) {
                                  await player.setLoopMode(LoopMode.one);
                                  isloop = true;
                                } else {
                                  await player.setLoopMode(LoopMode.off);
                                  isloop = false;
                                }
                              },
                              highlightColor: Colors.orange[100],
                              iconSize: 30,
                              icon: isloop
                                  ? Icon(Icons.repeat_outlined,
                                      color: Colors.orangeAccent[700])
                                  : const Icon(Icons.repeat_outlined)),
                      ],
                    ),
                  ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () async{
                        setState(() {   
                        isplay =true;
                          });
                        if(isplay =true){
                        player.play();
                      }
                        if(isloop==true){
                        await player.setLoopMode(LoopMode.off);
                        await player.seekToPrevious(); 
                        await player.setLoopMode(LoopMode.one);
                        }
                        else{
                          await player.seekToPrevious();
                        }
                      },
                      highlightColor: Colors.amber[100],
                      color: Colors.teal[700],
                      iconSize: 35,
                      icon: const Icon(Icons.skip_previous),
                      ),
                    IconButton(
                      onPressed: () {
                        if(isplay==true){
                          player.pause();
                          isplay=false;
                        }
                        else{
                          player.play();
                          isplay=true;
                        }
                      },
                      highlightColor:isplay ==true? Colors.amber[100]:Colors.teal[100],
                      color: Colors.teal[700],
                      iconSize: 35,
                      icon: isplay==true?  Icon(Icons.pause,color: Colors.teal[700],):Icon(Icons.play_arrow,color: Colors.orangeAccent[700],),
                      ),
                    IconButton(
                      onPressed: () async{
                        setState(() {   
                        isplay =true;
                          });
                        if(isplay =true){
                        player.play();
                      }
                          if(isloop==true){
                        await player.setLoopMode(LoopMode.off);
                        await player.seekToNext(); 
                        await player.setLoopMode(LoopMode.one);
                        }
                        else{
                          await player.seekToNext();
                        } 
                        },
                        
                      highlightColor: Colors.amber[100],
                      color: Colors.teal[700],
                      iconSize: 35,
                      icon: const Icon(Icons.skip_next),
                      ),
                  ],
                ),
                const SizedBox(height: 4)
                ],
              ),
      ): const SizedBox(height: 0),
      appBar:AppBar(
          title:  Column(
            children: [
            const SizedBox(height: 7),
            responsive==Orientation.portrait? Text("مَنْظُومَةُ الْقَواعِدِ الْفِقْهِيَّةِ",style: TextStyle(color: Colors.deepOrange[500],fontSize: textResW/0.85)):
                                              Text("مَنْظُومَةُ الْقَواعِدِ الْفِقْهِيَّةِ",style: TextStyle(color: Colors.deepOrange[500],fontSize: textResW*0.70)),
            const SizedBox(height: 5),
            responsive==Orientation.portrait? Text("لِلْعَلَّامَةِ الشَيخ عَبْدِالرَّحْمَنِ بن ناصر السَّعْدِيِّ (رَحِمَهُ اللهُ)",style: TextStyle(fontSize:subtextRes, color: Colors.yellow [900])):
                                              Text("لِلْعَلَّامَةِ الشَيخ عَبْدِالرَّحْمَنِ بن ناصر السَّعْدِيِّ (رَحِمَهُ اللهُ)",style: TextStyle(fontSize:subtextRes*0.55, color: Colors.yellow [900])),
            const SizedBox(height: 10)
          ]),
          centerTitle: true,
          backgroundColor: Colors.lime[200],
        ),   
      body:Container(
        padding: const EdgeInsets.only(left: 7,right:7,top: 11),
        child: ListView.separated(
          itemCount: data.length,
          separatorBuilder:(context,i){
            return const SizedBox(height: 7);
          }, 
          itemBuilder: (context,i){
            return Column(
              children: [
                Card(
                  
                  color:  Colors.orange[200],
                  child: ListTile(
                    shape: player.currentIndex==i&&isopen==true? RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                    side: BorderSide(color: Colors.cyan[600]!,width: 4),
                  ):RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                    isThreeLine: responsive==Orientation.portrait? true :false,
                    subtitle: responsive==Orientation.portrait? const SizedBox(height: 0):null,
                    title: responsive==Orientation.portrait?  Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                            Text(data[i][0],textAlign: TextAlign.right,style: player.currentIndex==i&&isopen==true?TextStyle(color: Colors.deepOrange[900],fontSize: textResW):TextStyle(color: Colors.teal[800],fontSize:textResW)),
                            const Text("",textAlign:TextAlign.center),
                            Text(data[i][2],textAlign: TextAlign.left,style: player.currentIndex==i&&isopen==true?TextStyle(color: Colors.deepOrange[900],fontSize: textResW):TextStyle(color: Colors.teal[800],fontSize: textResW)),
                          ],
                        ): Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                            Text(data[i][2],style: player.currentIndex==i&&isopen==true?TextStyle(color: Colors.deepOrange[700],fontSize: textResT):TextStyle(color: Colors.teal[800],fontSize: textResT),),
                            const Text(""),
                            Text(data[i][0],style: player.currentIndex==i&&isopen==true?TextStyle(color: Colors.deepOrange[700],fontSize: textResT):TextStyle(color: Colors.teal[800],fontSize: textResT)),
                          ],
                        ),
                    trailing: responsive==Orientation.portrait? Text("${i+1} -",style: player.currentIndex==i&&isopen==true? TextStyle(fontSize: textResW*0.99,color: Colors.orangeAccent[700]):TextStyle(fontSize: textResW,color: Colors.cyan[800]),textDirection: TextDirection.rtl,textAlign: TextAlign.start,):
                                                                Text("${i+1} -",style: player.currentIndex==i&&isopen==true? TextStyle(fontSize: textResT*0.99,color: Colors.orangeAccent[700]):TextStyle(fontSize: textResT,color: Colors.cyan[800]),textDirection: TextDirection.rtl,textAlign: TextAlign.start,),
                    onTap: () async{  
                      index = i;
                        if(isplay==true){
                          setState(() {
                          isopen=true;
                          });
                          setUp();
                          playShuffle(i);
                        }
                        else{
                          setState(() {
                            isplay=true;
                          });
                          setUp();
                          playShuffle(i);
                        }
                    }, 
                    // onLongPress: (){
                    //   if(isopen==true){
                    //     setState(() {
                    //       isopen=false;
                    //     });
                    //   }else{
                    //     setState(() {
                    //       isopen=true;
                    //     });
                    //   }
                    // },
                  ),
                ),
              ],
            );
          },  
          )  
      )
    );
  }
}