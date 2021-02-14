 CREATE TABLE Artist (
        BandID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        BandName VARCHAR(100) NOT NULL,
        Member INT NOT NULL
        );

    CREATE TABLE Style(
        StyleID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        StyleName VARCHAR(100) NULL
        );
    
    CREATE TABLE Music(
        MusicID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        MusicName VARCHAR(100) NOT NULL,
        BandID VARCHAR(100) NOT NULL REFERENCES Artist(BandID),
        StyleID VARCHAR(100) NOT NULL REFERENCES Style(StyleID),
        Lyrics VARCHAR(2000) NOT NULL,
        AlbumID VARCHAR(100) NULL REFERENCES Album(AlbumID),
        SongLenght TIME NOT NULL
        );

    CREATE TABLE Album(
        AlbumID int(11) NOT NULL AUTO_INCREMENT PRIMARY KEY,
        AlbumCoverPhoto VARCHAR(100) NOT NULL,
        AlbumName VARCHAR(100) NOT NULL,
        BandID VARCHAR(100) NOT NULL REFERENCES Artist(BandID),
        StyleID VARCHAR(100) NOT NULL REFERENCES Style(StyleID),
        ReleaseYear YEAR(4) NOT NULL
        );


INSERT INTO Artist (BandName, Member)
    VALUES ('LiSA(日本)', '1'),
            ('วัชราวลี', '3'),
            ('getsunova', '4');

    INSERT INTO Style (StyleName)
    VALUES ('เจป็อป'),
            ('ป็อป');
    
    INSERT INTO Music (MusicName,BandID,StyleID,Lyrics,AlbumID,SongLenght)
    VALUES ('Crossing Field','1','1','Cloudy memories

 

Of the way it used to be

Search for answers I can t see

Looking back in time

 

All the images they tell me where I m going

 

They guide me

Look to the skies

It s a new day every day

 

Feeling so confused

 

But I know your heart is true

 

Please trust in me

 

Flying so high up in the sky

 

I m caught up in a dream

My fears they fade away

It s my reality

 

And now I know the reason why

 

I ve got to make a change

Grow stronger every day

I need you here with me

I m trapped in the dark

 

But I ll never give in

 

I gotta break free

Escape this endless nightmare

I won t stop

 

Searching in the dark

 

But I don t know where you are

 

Won t you guide me

 

I m falling

 

Tremble at your touch

 

And I know I must return back to reality

 

It s calling

 

Close your eyes and just follow

You ll know

 

Pleasure and the pain

 

Come to haunt me once again

Just trust in me

 

Everything that we re dreaming of

 

You make my life complete

The smell of victory

 

It s in the air I breathe

I ll always be right by your side

 

I do it all for you

But nothing s as it seems

I m floating in a dream

You gotta believe the power that we feel

 

It comes from deep

Within our hearts a promise

That we ll keep

 

Open my eyes I try to speak

 

I m calling out your name

God bless the miracle

 

That brought you here to me

 

Flying so high up in the sky

 

I m caught up in a dream

My fears they fade away

It s my reality

 

And now I know the reason why

 

I ve got to make a change

Grow stronger every day

I need you here with me

I m trapped in the dark

But I ll never give in

 

I gotta break free

 

Escape this endless nightmare

I won t stop','1','00:04:07'),
        ('Gurenge','1','1','Tsuyoku nareru riyuu wo shitta
Boku wo tsurete susume

Dorodarake no soumatou ni you
Kowabaru kokoro furueru te wa
Tsukamitai mono ga aru
Sore dake sa

Yoru no nioi ni (I ll spend all thirty nights) 
Sora nirandemo (Staring into the sky) 
Kawatte ikeru no wa jibun jishin dake
Sore dake sa

Tsuyoku nareru riyuu wo shitta
Boku wo tsurete susume

Dou shitatte! 

Kesenai yume mo tomarenai ima mo
Dareka no tame ni tsuyoku nareru nara
Arigatou kanashimi yo
Sekai ni uchinomesarete makeru imi wo shitta
Guren no hana yo sakihokore
Unmei wo terashite

Inabikari no zatsuon ga mimi wo sasu
Tomadou kokoro yasashii dake ja
Mamorenai mono ga aru
Wakatteru kedo

Suimenka de karamaru zenaku
Sukete mieru gizen ni tenbatsu
Tell me why, Tell me why, Tell me why, Tell me...
I don t need you! 
Itsuzai no hana yori
Idomi tsudzuke saita ichirin ga utsukushii

Ranbou ni shikitsumerareta togedarake no michi mo
Honki no boku dake ni arawareru kara
Norikoete miseru yo
Kantan ni katazukerareta mamorenakatta yume mo
Guren no shinzou ni ne wo hayashi
Kono chi ni yadotteru

Hito shirezu hakanai chiriyuku ketsumatsu
Mujou ni yabureta himei no kaze fuku
Dareka no warau kage dareka no nakigoe
Daremo ga shiawase wo negatteru

Dou shitatte
Kesenai yume mo tomarenai ima mo
Dareka no tame ni tsuyoku nareru nara
Arigatou kanashimi yo
Sekai ni uchinomesarete makeru imi wo shitta
Guren no hana yo sakihokore
Unmei wo terashite

Unmei wo terashite','2','00:04:09'),
        ('Ichiban no Takaramono','1','1','Kao wo awashita kenkashitebakari

それもいい思い出だった

soredemo ii omoidatta

きみが教えてくれたんだ　もう恐くない

kimi ga oshietekuretanda mo kowakunai

どんな不自由でも幸せは掴める　だから

donna fujiyuu demon shiawase ha tsukameru dakara

ひとりでもゆくよ　例え辛くても

hitoridemoyukuyo tatoe tsurakutemo

きみと見た夢は　必ず持ってくよ

kimito mita yume ha kanarazu mottekuyo

きみとがよかった　ほかの誰でもない

kimito ga yokatta hoka no daredemonai

でも目覚めた朝　きみは居ないんだね

demo mezameta asa  kimi ha inaindayo

ずっと遊んでれる　そんな気がしてた

zutto asondereru sonna kigashita

気がしていただけ　わかってる

kigashite itadake wakatteru

生まれてきたこともう後悔はしない

umaretekita koto mou koukai ha shi nai

祭りの後みたい　寂しいけどそろそろ行こう

Matsuri no ushiromitai sabishii kedo sorosoro ikou

どこまでもゆくよ　ここで知ったこと

dokomade yuku yo kokode shitta koto

幸せという夢を叶えてみせるよ

shiawase to iu yume kanaetemiseruyo 

きみと離れても　どんなに遠くなっても

kimito hanaretemo donna ni tooku nattemo

新しい朝に　あたしは生きるよ

atarashii asa ni atashi ha ikiruyo

ひとりでもゆくよ　死にたくなっても

hitori demo yukuyo shinitakunattemo 

声が聞こえるよ　死んではいけないと

koe ga kikoueruyo shinde ha ikenai to

例え辛くても　寂しさに泣いても

tatoe tsurakutemo sabishisa ni naitemo


心の奥には　温もりを感じるよ

Kokoro no oku ni ha nukumori o kanjiru yo

巡って流れて　時は移ろいだ

megutte nagaretemo toki ha utsuroida

もう何があったか　思い出せないけど

mou nani ga attaka omoidasenaikedo

目を閉じてみれば　誰かの笑い声

me wo tojitemireba dareka no waraigoe

なぜかそれが今一番の宝物','3','00:06:00'),
        ('ร่มสีเทา','2','2','A1 ฉันเฝ้าถามความสุขอยู่ที่ไหน
 ชายที่เขาเดินผ่านฉันเข้ามา
 บอกกับฉันขอร่มสักคัน
 แต่ว่าที่มือเขา ก็มี หนึ่งคัน
 ก็แปลกใจ ท่ามกลางหยดฝนโปรยปราย

A2 เขาก็ถามฉันว่าอยากสุขไหม
 ลองหุบร่มในมือสักพักนึง
 และเงยหน้ามองวันเวลา มองหยดน้ำที่มันกระทบตา
 ยังเปียกอยู่ใช่ไหม หรือไม่มีฝน

Hook บนท้องฟ้าไม่มีอะไรแน่นอน ถ้ามองจากตรงนี้
 เดี๋ยวก็มืด แล้วก็สว่าง
 อาจจะมีฝนก่อเป็นพายุ หรือลมลอยปลิวอยู่แค่นั้น
 สุขที่เคยเดินทางตามหามานาน ไม่ได้ไกลที่ไหน
 อยู่แค่นี้เอง........

 (อย่าไปยึด อย่าไปถือ อย่าไปเอามากอดไว้ ก็จะไม่เสียใจ)
 (ตลอดชีวิต ต้องผ่านการเปลี่ยนแปลง  ไม่ว่าใคร จะทุกข์ จะสุขแค่ไหน ก็อยู่ที่จะมอง)


A3 ยิ้มฉันยิ้มมากกว่าทุกครั้ง

 สุขที่ฉันตามหามาแสนนาน
 อยู่ตรงนี้ แค่เพียงเข้าใจ
 อย่าไปยึด ถือมันและกอดไว้
 ก็แค่ร่มเท่านั้น เท่านั้น

B ฉันเห็นเธอถือร่มผ่านมา
 เต็มไปด้วยร่องรอย และคราบน้ำตา
 ฉันได้เห็นแล้วมันปวดใจ 
 ไม่ใช่เพียงแค่เธอที่ทุกข์
 ฉันก็เป็นเหมือนเธอ เธอได้ยินไหม
 อยากขอให้เธอลองโยนร่มที่ถือเอาไว้หนัก 
 โยนมันออกไป','3','00:03:40'),
        ('อินสตาแกรม','2','2','อยากย้อนเวลากลับไป ตรงที่เก่า
อยากจะทำให้เรื่องของเรา ดีกว่านี้
อยากย้อนคืนวันเวลา ให้เธอและฉันมีวันที่แสนดี
ให้เวลานี้มีเพียงแต่เรา เหมือนเคย
ทุกครั้ง ที่คิดถึงเธอเมื่อไร
ในใจฉันยังคงเจ็บอยู่เหมือนเดิม
รูปใด ภาพใด ยิ่งดูยิ่งซ้ำเติม
ยิ่งตอกยิ่งย้ำว่าฉันได้ทำให้เธอเสียใจ
อยากย้อนเวลากลับไปหยุดตรงที่เก่า
อยากจะทำให้เรื่องของเราดีกว่านี้
อยากย้อนคืนวันเวลา ให้เธอและฉันมีวันที่แสนดี
ให้เวลานี้มีเพียงแต่เราอีกเหมือนเคย
แต่ฉันก็รู้จะทำยังไงเธอคงไม่ย้อนมา
ภาพวันเวลาเหล่านั้น ฉันไม่อาจจะเลือนลบไป
มันคงจะดีถ้าในวันนี้ยังมีเธอข้างกาย
คงดีกว่ารูปถ่าย ยิ่งมองมันเท่าไรยิ่งมีน้ำตา
ร้านนี้เป็นที่ประจำของเธอ
มุมเดิมที่ฉันและเธอเคยชอบไป
วันนี้เปิดภาพเธอ จะเลื่อนมันดูเท่าไร
ยิ่งทำให้รู้ว่าฉันไม่มีใคร อีกแล้ว
จึงอยากอยากย้อนเวลากลับไปตรงที่เก่า
อยากจะทำให้เรื่องของเรา ดีกว่านี้
อยากย้อนคืนวันเวลา ให้เธอและฉันมีวันที่แสนดี
ให้เวลานี้มีเพียงแต่เราอีกเหมือนเคย
แต่ฉันก็รู้จะทำยังไงเธอคงไม่ย้อนมา
ภาพวันเวลาเหล่านั้นฉันไม่อาจจะเลือนลบไป
มันคงจะดีถ้าในวันนี้ยังมีเธอข้างกาย
คงดีกว่ารูปถ่าย ยิ่งมองมันเท่าไร
ยิ่งทำให้รู้ว่าเธอก็คงไม่มีวันย้อนมา
ภาพวันเวลาเหล่านั้นฉันไม่อาจจะเลือนลบไป
มันคงจะดีถ้าในวันนี้ยังมีเธอข้างกาย
คงดีกว่ารูปถ่าย ยิ่งมองมันเท่าไรยิ่งมีน้ำตา
ยิ่งมองมันเท่าไร จะมองมันเท่าไร เธอคงไม่ย้อนมา','4','00:04:40'),
        ('ไกลแค่ไหน คือ ใกล้','3','2','พยายามจะทำวิธีต่างๆ ให้เธอนั้นรักฉัน
พยายามทุกวัน มอบให้ทุกอย่างที่เธอต้องการ
เหมือนเดินบนสะพานที่มีปลายทางคือใจของเธอ
ยังคงคิดและหวังจะนำเอารักแท้นี้ไปให้
แต่ทำไม เดินมาเนิ่นนานไม่ถึงซักที
แต่ทำไม มองดูเส้นทางเหมือนยาวออกไป
อยากรู้ว่าฉันต้องทำตัวอย่างไร
อีกไกลแค่ไหน จนกว่าฉันจะใกล้ บอกที
อีกไกลแค่ไหนจนกว่าเธอจะรักฉัน เสียที
มีทางใดที่อาจทำให้เธอสนใจ ได้โปรด
บอกกับฉันให้รู้ที ว่าสุดท้ายแล้วฉันยังมีความหมาย
ยังไม่คิดยอมแพ้ ฉันเพียงแต่อ้อนล้าก็เท่านั้น
ภายในใจยังคงรักเธอเหมือนเดิม ไม่เคยเปลี่ยน
คงจะดีไม่น้อย ถ้าเธอบอกให้ฉันได้รับรู้
ความในใจของเธอ เหตุผลต่างต่างที่ยังซ่อนไว้
ว่าทำไมเดินมาเนิ่นนานไม่ถึงซักที
แต่ทำไม มองดูเส้นทางเหมือนยาวออกไป
อยากรู้ว่าฉันต้องทำตัวอย่างไร
อีกไกลแค่ไหน จนกว่าฉันจะใกล้ บอกที
อีกไกลแค่ไหนจนกว่าเธอจะรักฉัน เสียที…','4','00:04:26'),

    INSERT INTO Album (AlbumCoverPhoto,AlbumName,BandID,StyleID,ReleaseYear)
    VALUES  ('LANDSPACE','1','1','2009'),
            ('Gurenge','1','1','2012'),
            ('Keep The Beats!','1','1','2017'),
            ('Legend','2','2','2017'),
            ('The First Album','3','2','2013');