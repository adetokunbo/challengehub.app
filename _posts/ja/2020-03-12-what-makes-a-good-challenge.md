---
date: 2020-03-12
title: 良いチャレンジにするためには
description: ChallengeHubは様々なチャレンジのスタイルを可能にします。選択問題よりいいものができます！
image: /images/blog/2020-03-12-what-makes-a-good-challenge-ja-2020-03-12.png
image_alt: 良いチャレンジにするためには
image_maxheight: 499
reading_minutes: 3
categories:
 - ChallengeHub
author_staff_member: james
ref: 2020-03-12-what-makes-a-good-challenge
lang: ja
---

ChallengeHubの優れた機能の一つに、学生がリアルタイムに回答の正誤を確認できるという点があります。数字と文字での回答に対応しており、様々なチャレンジのスタイルを可能にしています。

学生はChallengeBotに回答を送り、ChallengeBotがその正誤を知らせてくれます。チャレンジを解くまで答えを見ることはできないので、逆算で答えを導くことはできません。

この投稿では、いいチャレンジの回答の形式について説明しています。

## 数字だけの回答：Good!

ChallengeHub特有の機能の一つは、チャレンジの正解に公差を指定できるところです。例えば、下記チャレンジ：

> ```f(x) = x² + 3.5x + 4``` の微分を求めてください。\\
> 回答を確認するには、 ```x=2``` を回答に代入してください。

この場合、正解は ```f'(x) = 2x + 3.5``` であり、学生は ```x=2``` すると ```7.5``` を取得できます。
```7.5±1%``` や ```7.5±0.1``` の様な公差を回答に指定でき、とくに誤差が蓄積する複雑な計算や複数の段階を含むチャレンジに便利です。

![公差 UI](/images/blog/2020-03-12-tolerance.png){: .framed-image }

回答の一致確認が難しいですが、正解と考えられる回答を網羅することができます。
例えば正解が行列の場合、こういう指示もできます：

> 回答は2x2の行列になります。\\
> 正誤確認をする際は、行列の全ての数字を足して合計を入力してください。

下記は複素数を使った例えです：

> 回答は ```a+bi``` という形の複素数です。\\
> 正誤確認をする際は、a+10bを計算してください。

もしくは：

> 回答は ```a+bi``` という形の複素数です。\\
> 正誤確認をする際は、複素数の絶対値を入力してください。

回答そのものと完全に一致を確認していなくても、正解は正解、不正解は不正解とすぐに分かり、学生は効率的に勉強を続けることができます。正しい計算を確認したい場合、教師は授業中にチャレンジログをいくつか確認することも可能です。

## 選択問題：Bad!

理想のチャレンジは熟慮と授業中の会話を促し、推測を促しません。

学生を選択問題で試すのはよくあることです。例えば：

> ![振り子の位相](/images/blog/2020-03-12-pendulum-phase.png)
> 上記の図を参考にし、振り子の初期角度がπで初期角速度が0 rad/sの場合、振り子はどうなりますか？
  - a) 振り子は停止したまま
  - b) 振り子は前後に揺れる
  - c) 振り子はは一周回る

この場合、学生は正解を確認できるまで”a”、”b”か”c”を無作為に入力してみようかという思いにかられるかもしれません。そのあと、逆算でどうしてそうなるか探る人もいるでしょう。しかし探りもしない学生もいるにも関わらず、教師は学生が問題を理解していると勘違いして、次の問題に移るかもしれません。

## 正誤問題の二進法足し算：Good!

選択問題の代わりに、**正誤問題の二進法足し算**を提案しています。同じ図を参考にし、チャレンジは下記のようになります：

> 下記の文の中の正しい文の点数を足して合計を計算してください。
> 
> - **1点** 初期角速度が1単位だと、振り子は初期角度に関わらず円形の動きをとる。
> - **2点** 初期角速度が-2.5単位だと、振り子は初期角度に関わらず円形の動きをとる。
> - **4点** 初期角度がπ/2で初期角速度が1単位だと、振り子は定期的に揺れる。
> - **8点** 初期角度がπ/2で初期角速度が1単位だと、振り子は円形の動きをとる。
> - **16点** 初期角度が0で初期角速度が0単位だと、振り子は定期的に揺れる。
> 
> 回答は整数として入力してください。

各文は正誤問題になっており、それぞれの文の点数を足すことで唯一の数字が生まれます。推測を使って正解を得る確率は1/3から1/(2⁵)まで小さくなり、正誤問題を増やすことでさらに小さくできます。

## 単語選択：Bad!

下記のチャレンジはいかがでしょうか？

> 対流は伝熱の一つ。もう二つを入力してください。

正解は「熱伝導と熱放射」です。ChallengeBotは文字列の一致をだけ確認するため、逆の順番（「熱放射と熱伝導」）など「と」のかわりに「や」または「、」を使われると不正解と判断します。また、こういった問題は上記で述べたのと同じく推測を促し、同じ問題を招きます。

## 順番入れ替え問題：Good!

上記のような問題を招かずに文字列を使う一つの方法はパターン照合を利用することです。例えば：

> 下記の5つの図（a、b、c、d、e）は下記の5つの数式と関係しています。
> 図を数式と同じ順番に並べてください。\\
> 回答は「abcde」という形で入力してください。

この場合は、文字の入力の仕方が明確で、推測で当たる確率が1/120となりますので、確実な学びにつながるでしょう。

## 評価のみ

場合により、作文などが求められる場合、上記で提案したチャレンジのやり方もふさわしくない時があります。そういった場合は、教師は学生に難易度の評価だけを依頼し、学生の理解度を測ることもできます。

## 結論として

教師がチャレンジを作成する時間と、学生がチャレンジの資料を読んで達成するまでの時間の割合も頭に入れて作業できるといいでしょう。学習効率も教師の作業効率も上げていきたいと思います。

ChallengeHubは学習内容の深い理解を促す他にないチャレンジのスタイルを可能にします。また、ChallengeHubを利用いただいている先生方の感想と提案を常に歓迎・感謝しています。様々な教え方の力になることができれば幸いと思います。