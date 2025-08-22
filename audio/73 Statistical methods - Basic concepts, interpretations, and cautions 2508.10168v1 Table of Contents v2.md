以下は、提供されたソース「2508.10168v1.pdf」の詳細な目次です。すべての節と段落がナンバリングされ、対応する内容が記載されています。

---

**目次: 統計的手法：基本概念、解釈、注意点**

1.  **はじめに (Page 1)**
    1.  **アブストラクト**
        1.  関連性と因果的説明の研究は、分野によって方法論が大きく異なる中心的な研究活動である。
        2.  専門分野内でも、教科書や学術誌間の比較により、基礎がかなりの変動と論争の対象であることが明らかになっている。
        3.  本章は、これらの問題を最初から認識する統計的手法へのアプローチを概説し、モデルと統計をデータ記述に根ざし、それらからの推論を仮定に基づく推測として扱う。
    2.  **キーワード**: バイアス、因果推論、相性の良さ、信頼区間、P値、統計的推論、統計的情報、統計的有意性、統計的検定。

2.  **序論 (Page 2)**
    1.  従来の統計的手法は、測定された共変量レベル内で、データが明確に定義された対象母集団からの純粋な無作為抽出、または研究者が分析に参加した人々やその処遇のあらゆる重要な側面を完全に制御し理解している実験からの純粋な無作為な治療割り当てによるものと仮定する。
    2.  これらの方法は、理想的なケースでのみ論理的に健全な推論を提供し、実際の不完全な応用に対する**正しい回答**を提供するものではない。
    3.  本章は、これらの問題を直接認識する方法で、これらの手法を再解釈する方法を示す。
    4.  これには、選択、治療、測定、項目欠損、または観察からの脱落（打ち切り）に影響を与える可能性のある文脈的要因が含まれる。

3.  **文脈的記述と統計的定式化 (Page 3)**
    1.  統計的手法を正しく使用するためには、その手法が答えるべき研究課題を、日常言語で記述された明確な文脈的記述として定式化する必要がある。
    2.  参加者の選択と研究への維持に関するプロトコル、および研究のために選択された人々（拒否した人々や募集後に失われた人々について知られていることを含む）の詳細な記述も必要である。
    3.  統計的手法の数学は、実際的な限界により、典型的には**人為的**であり**過剰な単純化**を伴い、研究の実施、分析、およびその対象に関する重要な詳細を省略するため、**過信されている**結果を生み出す。
    4.  統計的手法の必然的な**過剰な単純化**を考慮すると、安全な使用には、その出力を理想的なケースにおける推論への推論のための**ガイドライン**として扱い、文脈的な質問に対する**正しい回答**として扱わないことが必要である。
    5.  頻度論者とベイズ主義者など、統計学者の間で多くの学派の区分けがなされているが、両方の健全な使用には、それらの方法が推論や決定の規則（通常提示されるように）から**降格**され、データの元の文脈的質問との関係に関する異なる視点として扱われる必要がある。
    6.  非公式な文脈的推論の中に統計的手法を組み込むという長年の助言がある。
    7.  さらに複雑なことに、多くの分析選択は従来の方法で指定されておらず、調査チームまたは彼らが従う権威に委ねられているため、「**分岐する小道の庭**」（研究者の自由度が高い）に至る。

4.  **研究の現実と分析の多様性 (Page 4)**
    1.  この研究の現実は、統計的方法論によってほとんど無視されている。
    2.  上記の課題を考慮して、研究では同じデータセットを異なる有資格の分析チームに提供している。

5.  **統計的手法の架空の「小さな世界」と過剰な単純化 (Page 5)**
    1.  上記の注意を念頭に、各統計分析を、その**過剰な単純化**された仮定によって厳密に制限された架空の「**小さな世界**」または「**おもちゃの例**」における**思考実験**と見なすことができる。
    2.  日常の工学用語では、仮定の集合全体をモデルと呼ぶことがあり、ここではその略語を使用する。
    3.  モデルから得られた回答は、モデルの仮定が不正確であっても、研究が対象とする現実に関する有用な洞察やヒントを提供する可能性がある。

6.  **関連性に関する統計モデル：記述的分析と因果分析 (Page 6)**
    1.  関連性モデルまたは記述モデルは、時間順序や**因果関係**に関係なく、変数がどのように関連しているかを示すにすぎない。
    2.  記述的目的であっても、調査参加者を超えて参加者が抽出された対象母集団に推論を行う場合は、**因果的仮定**が必要になる。
    3.  標本を超えた推論のための統計的手法が使用する主要な仮定は、対象母集団からの**無作為抽出**である。
    4.  **無作為抽出**が実施された場合でも、関連性モデルからの統計的推論は、**因果関係**ではなく関連性のみを参照する。
    5.  例えば、**因果図式**に示されるような**因果推論**に必要な追加の仮定を説明し、批判するよう注意を払う場合にのみ安全に行うことができる。

7.  **統計的単純化の仮想的な例 (Page 8)**
    1.  医学的助言と健康政策における差し迫った質問は次のとおりである：「**大麻**の使用が精神衛生にどのような影響を与えるか？」。
    2.  **大麻**の使用のあらゆる側面は、しばしば劇的に時間とともに変動し、年齢や地域の法律などの変数と強く関連する。
    3.  基本的な統計分析で行われる典型的な単純化を説明するため、表1は、自己申告による**大麻**の使用X（使用なしの場合X=0、使用ありの場合X>0）と、その後の重篤な精神科診断Y（診断なしの場合Y=0、診断ありの場合Y=1）からのものとラベル付けされた仮説的な**2かける2**の度数表を示す。
    4.  分析では、多変量表や多重回帰を用いてこれらの詳細を探求すべきであるが、**相関**係数、「説明された分散」、「**標準化**された」係数は、興味のある効果と無関係な研究の特徴を混同することに注意が必要である。
    5.  例えば、以下で議論されるような、これらの情報源を無視する統計分析は、データ生成プロセスによって生成された測定値間の**関連性**に関する推論のみを提供すると見なされるべきである。
    6.  **表1**. 報告された月間**大麻**使用と精神科診断のクロス分類。
    7.  表1で、調査で**大麻**使用を報告した者の中の診断の割合は0.083または8.3%であり、使用なしを報告した者の中では0.033または3.3%である。
    8.  これらの**関連性**の尺度は、実際の使用効果と、選択的な調査参加、使用の自己選択、および使用と診断の誤報告または誤**コーディング**による**バイアス**が混ざり合ったものである。
    9.  いかなる尺度で見ても、表1は使用とリスクの**関連性**を示している。
    10. 変数や統計量を**関連性**を最大化するように選択すると、推定値は過大になり、P値は過小になる。

8.  **P値、統計的検定、および区間推定 (Page 11)**
    1.  P値、**「有意性検定」**、およびそれらに付随する区間推定（通常**「信頼区間」**と呼ばれる）を取り巻く理論と用語は非常に混乱しており、その結果、科学史上最も誤解され、誤って教えられ、誤用されている方法かもしれない。
    2.  したがって、本章では、それらの適切な使用と解釈を促す**枠組み**と**言語**を提供する。

9.  **調査への選択 (Page 12)**
    1.  調査の**中心的な仮定**は、選択が条件付きで**無作為**であることである。
    2.  **大麻**の例では、分析の最終的な600人に対してのみS = 1である。
    3.  通常の統計的推論は、招待された場合に利用可能なデータを提供したであろうHMO集団の個人に限定されるだろう。

10. **因果関係の実験的研究 (Page 13)**
    1.  次に、異なる治療選択がその後の健康転帰に及ぼす影響についての推論を生成することを意図した実験を考える。
    2.  治療効果を推定するための統計的手法の**中心的な仮定**は、治療割り当てが**条件付きで無作為**であるか、または機能的に同等の仮定である。
    3.  しかし、割り当てが**条件付きで無作為**であったとしても、実験集団を超えた治療効果に関する通常の統計的推論は、募集と維持に必要なすべての条件を満たしたであろう人々に限定される。
    4.  この問題は、現代の文献では**転送可能性**のトピックの下で扱われている。

11. **調査と実験における無作為性の仮定 (Page 14)**
    1.  調査と実験の**無作為性**の仮定の間には論理的な類似性があり、特定の調査分析方法を実験に適用できる。
    2.  調査との違いは、実験ではすべての集団メンバーがいずれかのサンプルに含まれ、治療を割り当てられることである。
    3.  調査と同様に、実験でも募集後に追跡調査からの脱落があり、その場合、その結果は**打ち切られた**と言われる。
    4.  これらの方法の仮定と分析の詳細は、かなり複雑になる可能性がある。

12. **因果関係の非実験的（観察的）研究 (Page 15)**
    1.  多くの重要な疑問について、人間を対象とした実験は非現実的、非倫理的、またはその両方である。
    2.  したがって、差し迫った疑問は、「純粋な観察研究から何を学ぶことができるか？」である。
    3.  これらの**バイアス**の原因には、**交絡因子**、分析のための非**無作為**選択、非**無作為**に欠損したデータ、測定および分類の誤り、データの粗化、データの希薄性、および不正確な調整が含まれる。
    4.  **バイアス**源の特定は、特に**無作為化**がなく、利用可能なデータが問題を調整するのに不十分な場合、有効な分析と解釈に不可欠である。

13. **表1の例におけるバイアスの考慮 (Page 17)**
    1.  例えば、調査前の病状（精神疾患を含む）が使用と精神科転帰の両方に影響を及ぼしたと予想すべきであり、結果として、**関連性**の一部またはすべてが既存の病状の交絡（混合）によるものである可能性がある。
    2.  **交絡**効果は、マッチング、層化、統計モデリングを含む膨大な「**交絡因子**制御」方法によってブロックまたは除去（調整）できる。
    3.  使用と非参加（最初の拒否またはその後の情報提供の失敗のいずれか）および精神科診断との**関連性**は、別の**バイアス**源である。
    4.  一次研究変数（ここでは使用と転帰）における測定誤差の影響は複雑で、制御と分析が極めて困難な場合がある。
    5.  例えば、報告された**大麻**使用の誤差は、基礎となる精神科の状態と関連している可能性が高いため、このヒューリスティックは例では正当化されないと思われる。
    6.  さらに複雑なことに、表1の粗化がある。

14. **P値とその関連する推定値と検定の基本理論 (Page 18)**
    1.  P値の概念は1700年代初頭にさかのぼることができ、1800年代初頭には一般的な統計的手法となったが、その名称ではなく、**「統計的に有意」**な結果の概念は1880年代に現れた。
    2.  Pearson (1900)とFisher (1934)の形式では、P値はデータがそのデータを生成したプロセスの動作に関するモデルまたは仮説とどれだけ**相性の良さ、調和性、整合性**があるかを示す指標である。
    3.  この**相性の良さ**の使用において、高い、あるいは**完璧に相性が良い**ことや**適合度**が高いことが、データがモデルや仮説を支持することを意味するものではないことに注意することが非常に重要である。
    4.  たとえそのような問題がなくても、P値とその関連統計は、それらが支持しない推論、例えば仮説の確率などを表したり暗示したりするものとして頻繁に誤解される。

15. **モデル、統計的仮説、および補助仮定 (Page 20)**
    1.  P値の正しい理解と使用には、ほとんどの使用者には馴染みのないある程度の抽象的な理論が必要である。
    2.  **大麻**研究における例としては、報告された使用Xと精神科転帰Yが、**対象母集団**において**関連性**がないという帰無仮説があり、これは**母集団リスク差** = 0、**母集団リスク比** = 1、または**母集団オッズ比** = 1と等価に表現できる。
    3.  多くの統計書では**「帰無仮説」**という用語をあらゆる統計的仮説Hに使用しているが、この用法は日常の英語とは異なる。
    4.  **母集団オッズ比** = 1、**母集団オッズ比** = 2、および ½ ≤ **母集団オッズ比** ≤ 2は**両側仮説**の例であり、**母集団オッズ比** ≤ 1 および **母集団オッズ比** ≤ 1.2 は**片側（または方向性）仮説**の例である。
    5.  対象仮説Hの他に、モデルにはP値と推定値の計算に使用される重要な**補助仮定**も含まれる。
    6.  別の一般的な**補助仮定**は、結果が個人間で独立していることである。
    7.  回帰分析で使用されるもう一つの**補助仮定**は、**対象母集団**における結果の傾向が回帰モデルによって指定された形状に従うことである。

16. **不一致度統計量と参照分布 (Page 22)**
    1.  完全な分析モデルMは、**対象仮説**Hと**補助仮定**Aの組み合わせであり、M = H & A または M = (H, A) と表記される。
    2.  データのモデル予測からの**乖離度**を要約する方法は多数ある。
    3.  しかし、Aが誤った仮定を含んでいる場合に、Hの違反に対する**最強力**な感度のみに基づいてTを選択すると、逆の結果を招く可能性がある。
    4.  Tの例としては、Z-統計量、**カイ二乗**、F、Student-t統計量、およびデータとMが予測したものの間の**不一致度**を測定するための他の多くの公式がある。
    5.  **大麻**の例では、行と列の分類は診断と**大麻**使用であり、合計は4つのセルにわたる。
    6.  **非帰無仮説**、例えば**母集団オッズ比** = 2の場合にも同じ一般的なピアソンの公式を使用できる。
    7.  そして、参照分布は、その分布を計算するために使用されたすべての仮定（HとAの両方を含む）が正しかった場合、Tが観測されたtと同じかそれ以上に極端になるおおよその確率pを与える。
    8.  **大麻**の例では、**カイ二乗**参照分布を1自由度で5.79の統計量に参照すると、p = Pr(T ≥ t | M) = 0.016 を得る。
    9.  この**テール確率**P値pは、Pearson (1900)およびFisher (1934, 1936)によって定義された観測された**「Pの値」**または**「有意水準」**であり、1920年代にはP値と呼ばれるようになったもので、応用統計学のほとんどでP値が定義される方法である。
    10. モデルがTの非常に小さな値を非確率的であると示唆し、「極端」がTの非常に小さな値に対応する場合（自由度が3以上の**カイ二乗**統計量の場合のように）があることに注意すべきである。

17. **近似参照分布と正確参照分布 (Page 25)**
    1.  **2かける2**の表などの基本的なデータ構造を除いて、Tの**正確参照分布**を見つけてP値をそこから計算することは困難な場合がある。
    2.  しかし、**2かける2**の表では、Tの**正確参照分布**（**超幾何分布**と呼ばれる）は、代わりに**Fisherの正確P値**0.041、つまり4.1%を生み出す。
    3.  近似値を**正確P値**に近づけるために調整したり、現代の計算によって可能になったシミュレーション方法、例えば**ブートストラップ**を使用したりすることが可能である。

18. **P値をパーセンタイルと意外度で解釈する (Page 26)**
    1.  P値が提供する情報の固有の非対称性を理解することで、正しい解釈が助けられるかもしれない。
    2.  試験を受けた人の点数が、典型的な受験者と比較して、試験トピックに対する理解度がせいぜい平均であると事前に考えていた場合、その人の試験の点数の上位パーセンタイル位置が4.1%で、上位5%に入っていたら、私たちは**意外に思う**かもしれない。
    3.  P値pの**意外度**をより具体的にするために、**公平なコイントス**のメカニズムを想像し、P値pに最も近い確率（½n）となるn回投げてすべて表が出た場合に、私たちがどれだけ**意外に思う**かを問いかけることができる。
    4.  より一般的には、P値pが与えられた場合、私たちはs = −log2(p) に最も近いnを探す。
    5.  1ビットの情報量は非常に小さく、1回の**コイントス**によって伝えられる**公平さ**に関する情報量に相当する。
    6.  比較として、p = 0.05のS値は4.3であり、4回の**コイントス**ですべて表が出るという**無偏り**の仮説に対する情報量とほとんど変わらない。
    7.  多くの研究者は、**大麻**と精神科転帰の間に**関連性**がないとは予想していなかっただろう。
    8.  例えば、ユーザー間の診断の**オッズ**が非ユーザーの2倍になると予想していたと仮定する。

19. **統計的情報の狭さ (Page 28)**
    1.  Tによって測定される情報、したがってそのP値とS値によって測定される情報は非常に**狭い**ことに注意すべきである。
    2.  さらに、TとそのP値、S値は、完全なモデルMに対するデータの関係に関する**演繹的**（純粋に論理的）な情報のみを要約しており、Mに捉えられたもの以外の**文脈的**（背景）情報は使用しない。
    3.  もし代わりにH0が**大麻**使用が転帰に影響しないという**因果的帰無仮説**であるならば、p = 0.041がH0を指すという主張は、**大麻**使用が**無作為化**されていたという**補助仮定**（A）を含めることを要求するだろう。

20. **区間推定とP値との関係 (Page 29)**
    1.  誤解を避けるため、**母集団オッズ比**のような**関連性**尺度の複数の値についてP値を計算し、それらの**関連性**値に対してP値（または**相性の良さ**）**関数**として表またはプロットを作成できる。
    2.  もう1つは、P値が小さな数α（通常0.05）に等しい**関連性**値であり、これらは通常、100(1−α)%の**「信頼限界」**とラベル付けされるものに対応する**αレベル相性限界**と呼ぶことができる。
    3.  この限界内の範囲は**相性区間**と呼ばれる。

21. **被覆（「信頼」）区間 (Page 30)**
    1.  1.04から6.36の範囲は、より一般的には100(1−0.05)% = 95%**信頼区間**とラベル付けされるが、ここではその用語は避ける。
    2.  より正確には、**補助仮定**Aの下で、観測されたデータが**対象母集団**からの**無作為抽出**であると想像できる。
    3.  **被覆**が発生する実際のサンプル割合は、区間を計算する方法の**被覆率**と呼ばれる。
    4.  **被覆率**が**補助仮定**がすべて満たされた場合に1−α以上である場合（**正確区間**の場合と同様）、その方法は、仮定の下で**保守的に較正されている**か、または**保守的な被覆妥当性**を持つと言われる。
    5.  **被覆**と**誤り率**の定義は、理想的な条件下での可能なすべての**無作為抽出**にわたる方法が生成するものを指す。
    6.  不幸なことに、伝統により、観測された**相性区間**は**「信頼区間」**と呼ばれ、1−αは**αレベル相性区間**の**「信頼水準」**と呼ばれてきた。
    7.  この特定の区間（1.04, 6.36）が**母集団オッズ比**を含む確率を持つためには、**母集団オッズ比**に**事前分布**（**ベイズ的な**方法のように）を与える必要がある。
    8.  関連する問題は、いくつかの仮定が不確実な場合、1−αがその方法への**信頼**を大幅に過大評価する可能性があることである。
    9.  対照的に、仮定が不確実であるか、誤っていると**思われている**場合でも、**相性の良さによる解釈**は有効なままである。

22. **ベイズ統計学 (Page 33)**
    1.  これまで説明してきた方法は、提供される唯一の確率が仮説的な事象頻度（例えば、特定の仮定の下で予想される区間**被覆率**）であるため、「**頻度論の**」とラベル付けされることがある。
    2.  **ベイズ的な**方法に関する多くの入門書や書籍があるが、読者は**「ベイズ的な」**とラベル付けされた哲学と方法の間には重要な違いがあることに注意が必要である。
    3.  残念ながら、**ベイズ的な**確率の主張は、同じ**補助仮定**に依存するため、「**信頼区間**」の方法による**被覆**の主張と同じくらい疑わしいものになりうる。
    4.  それにもかかわらず、この利益の可能性は、害の可能性をもたらす。
    5.  したがって、**ベイズ的な**結果は常に**頻度論の**結果に先行させるべきである。
    6.  **事前分布**を判断するもう一つの方法は、それを**事前データ**に変換することである。
    7.  **事前情報**のデータ表現の強みは、対応する研究規模で**事前**の強さを見ることができる点にある。
    8.  Sullivan and Greenland (2013)は、SASコードを用いた**ベイズ的**ロジスティック、ポアソン、比例ハザード回帰の詳細を提供している。

23. **統計ソフトウェアにおける近似 (Page 35)**
    1.  ほとんどの統計ソフトウェアは、**正規（ガウス）近似**からP値と区間推定値を計算する。
    2.  おそらく最も一般的な**近似**は、Zスコアまたは**ウォルド**法である。
    3.  対応する**ウォルド**95%区間推定値βの範囲は、p > 0.05となるすべてのcの値の範囲である。

24. **ウォルド近似の限界 (Page 36)**
    1.  特に**カテゴリカル**な結果の場合、サンプルサイズが小さくなるかZスコアが極端になるにつれて、**ウォルド近似**はますます不正確になる。
    2.  同時に、データが**希薄**になるにつれて**オッズ比**推定値は1から遠ざかる方向にますます**バイアス**がかかり、**ウォルド**限界の深刻な不正確さが伴う。

25. **統計的有意性検定の批判的概観 (Page 36)**
    1.  P値は、推定値と**相性の良さの尺度**の両方を提供する多用途の統計ツールである。
    2.  正しいHの棄却は**「偽陽性」**、**「第一種過誤」**、または**αエラー**として知られている。
    3.  多くの場合、検定はP値の代わりにCIを使用して実行される。

26. **二分法への執着と誤解 (Page 37)**
    1.  **二分法**検定とその用語によって引き起こされた研究報告における多くの誤った推論を文書化し、分類する膨大な文献が存在する。
    2.  誤解はさておき、統計的検定のより根本的な批判は、単一の統計的**二分法**に基づいて決定を下すための健全な文脈的根拠が通常ないということである。
    3.  決定が必要な場合、各研究および**メタ分析**から得られる正確な推定値とP値を含む、研究と背景からの完全な情報に基づいて行われるべきである。

27. **有意性検定の用語と慣習における問題 (Page 38)**
    1.  統計的検定の多くの誤用と誤解は、一般的な意味とほとんど対応しない専門用語の誤用、および結果として生じる誤解が、結果の単純さや決定的な印象を生み出す**相乗効果**に起因すると考えられる。
    2.  この**間違ったゼロ仮説主義**的解釈は**「受容」**という言葉によって助長されており、p > αであるという理由だけで**関連性**や効果がないと誤って結論付ける膨大な数の報告につながっている。
    3.  表1では、**母集団オッズ比** = 1（H0）のp値は0.041であり、αが0.04以下であれば**「受容」**されるだろう。
    4.  **「有意」**をp ≤ αに、**「有意でない」**をp > αに使用することも同様に誤解を招く。
    5.  さらに別の問題は、統計文献のほとんどが**「帰無仮説」**という用語をあらゆる統計的仮説Hを指すのに使用していることである。
    6.  用語はさておき、**二分法**検定はP値または区間を統計的決定規則の中間計算に還元するが、これは重要なデータ情報を無視し、さらには曖昧にするため、非常に誤解を招く可能性がある。
    7.  また別の問題は、α = 0.05という**カットポイント**が、R.A.Fisherによって彼自身の研究における好みとして casually 言及されたに過ぎないにもかかわらず、いくつかの雑誌によって厳格な慣習として強制されるようになったことである。
    8.  このキャンペーンは、誤ったHの受容（**「偽陰性」**エラー）についてより懸念している一部の研究者の懸念を無視しており、より小さなαを使用することでその頻度が増加する。

28. **出版バイアスと「再現性の欠如」の幻想 (Page 41)**
    1.  統計の誤用と誤解によって生じる深刻な文献の歪みの中には、**出版バイアス**がある。
    2.  しかし、一旦**「有意な」関連性**が報告されると、**「有意でない」**結果が元の**「有意な」**結果と矛盾すると誤って報告された場合に、**「有意な」**結果がもはや**「有意でない」**結果ほど興味深いとは見なされないという逆の**デフレ的な出版バイアス**が生じることがある。
    3.  このような誤った矛盾の報告を避けるためには、研究間のP値と差の推定値を用いて、研究を直接比較する必要がある。

29. **二分統計的決定の誤り率と検出力 (Page 41)**
    1.  統計的決定規則に対して提供される通常の正当化は、その使用が誤った決定の**誤り率**について保証を伴うというものである。
    2.  次に、必要なすべての仮定が研究設計と実行によって完全に強制された理想的な状況を考える。
    3.  間違ったHを棄却する規則の割合は、その検定の**検出力**または**「真陽性率」**と呼ばれ、αとHが正しかったこととの近さに反比例する。
    4.  間違ったHを棄却できない検定の割合は1−**検出力**であり、しばしば**「偽陰性」**または**第二種過誤**率と呼ばれ、βで示される。

30. **検出力に関する問題 (Page 43)**
    1.  α = 0.05の場合、**帰無仮説**に対する何らかの**対立仮説**H1に対して80%の**検出力**を持つように研究を設計するのが一般的な慣習である。
    2.  より深い問題は、正しい**関連性**が不明であるため**検出力**が不明であり、研究デザインにおける**検出力**計算が非常に推測的であることである。
    3.  **検出力**はデータ分析には不要であり、議論の余地があるほど無関係である。

31. **多重比較 (Page 44)**
    1.  P値と区間の**「信頼」**および**「有意性」**解釈の使用における非常に論争の的となる微妙な問題は、**多重比較**（**同時推論**とも呼ばれる）という見出しの下で生じる。
    2.  問題の1つのバージョンでは、大規模な**無作為抽出**調査からのデータセットを分析し、20の仮説H1, …, H20のどれを、それぞれを**α = 0.05水準**で**有意性検定**に基づいて追求することを推奨するかを決定することを目標とすると仮定する。
    3.  この結果は当初は**ボンフェローニ調整**を正当化するように見えるかもしれないが、**検出力**、データの依存性、または誤差コストを考慮しないため、実際的な目的には非常に誤解を招く。
    4.  最も重要なことは、偽の仮説を棄却する**検出力**が、決定**カットオフ**を一律にα/20に下げることによって劇的に減少することである。
    5.  コストを考慮すると、研究者は、すべての20の仮説が正しい場合に少なくとも1つの偽の棄却を得る64%の可能性を受け入れるかもしれない。
    6.  より深い問題は、**多重比較**法がそもそも正当化されるかどうかを判断することである。
    7.  他の著者たちは、**多重性**が生じるほとんどの状況は、**ベイズ的な**または**経験的ベイズ的な**方法を用いて分析するのが最適であると主張している。

32. **結論 (Page 46)**
    1.  本章は、従来の統計学の基本的な要素をレビューし、それが人間集団の研究における対象分野と研究の現実と一致しない深刻な**過剰な単純化**を前提としていることに焦点を当てた。
    2.  この再方向付けには以下が含まれる。
    3.  P値を仮説モデルに対するデータの**相性の良さの尺度**として再解釈する。
    4.  区間推定値を、データを生成したプロセスの動作に関する明示的な仮定の下で、データと**相性の良さ**が高い**関連性**のサイズの範囲として再解釈する。
    5.  統計量を推論や決定に利用する前に、統計量を計算するために使用された仮定の不確実性を記述し、考慮に入れる。

33. **相互参照 (Page 47)**
    1.  疫学における**ベイズ的な**方法。
    2.  因果関係の**有向非巡回グラフ**。
    3.  疫学における**因果推論**。
    4.  **交絡**と**交互作用**。
    5.  疫学分析のための回帰法。
    6.  **感度分析**と**バイアス分析**。

34. **参考文献 (Page 47)**
    1.  Agresti, A.A. (2018). Introduction to Categorical Data Analysis, 3rd edn. Wiley, New York.
    2.  Amrhein, V., Korner-Nievergelt, F., Roth,T. (2017). The earth is flat (p> 0.05): significance thresholds and the crisis of unreplicable research. Peer J, 5, e3544.
    3.  Amrhein, V., Greenland, S., McShane, B. (2019a). Retire statistical significance. Nature, 567, 305-307.
    4.  Amrhein, V., Trafimow, D., and Greenland, S. (2019b). Inferential statistics as descriptive statistics: There is no replication crisis if we don't expect replication. The American Statistician, 73 supplement 1, 262-270.
    5.  Amrhein, V., Greenland, S. (2022). Discuss practical importance of results based on interval estimates and p-value functions, not only on point estimates and null p-values. Journal of Information Technology, 37(3), 316-320.
    6.  Bedrick, E. J., Christensen, R., Johnson, W. (1996). A new perspective on generalized linear models. Journal of the American Statistical Association, 91, 1450-1460.
    7.  Benjamin, D.J., Berger, J.O., Johannesson, M., Nosek, B.A., Wagenmakers, E., Berk, R., et al. (2018). Redefine statistical significance. Nature Human Behavior, 2, 6-10.
    8.  Boring, E.G. (1919). Mathematical vs. scientific significance. Psychological Bulletin, 16, 335-338.
    9.  Box, G.E.P. (1980). Sampling and Bayes inference in scientific modeling and robustness (with discussion). Journal of the Royal Statistical Society, Series A, 143, 383-430.
    10. Box, G.E.P. (1990). The unity and diversity of probability: Comment. Statistical Science, 5(4), 448-449.
    11. Campitelli, G. (2019). Retiring statistical significance from psychology and expertise research. Journal of Expertise Research, 2(4), 217-223.
    12. Carroll, R.J., Ruppert, D., Stefanski, L.A., & Crainiceanu, C. (2006) Measurement Error in Nonlinear Models, 2nd edn. Chapman & Hall, Boca Raton, FL.
    13. Clark, D.R. (2025). Credibility as data augmentation. CAS E-Forum, 03 April.
    14. Cole S.R., Edwards, J.K., Greenland, S. (2021). Surprise! American Journal of Epidemiology, 190(2):191-193.
    15. Cox, D. R., Wermuth, N. (1992). A comment on the coefficient of determination for binary responses. The American Statistician, 46, 104.
    16. Cox, D.R., Donnelley, C. (2011). Principles of Applied Statistics. Cambridge University Press, New York, sec. 8.4.3.
    17. Dahabreh, I.J., Robertson, S.E., Steingrimsson, J.A. (2024). Learning about treatment effects in a new target population under transportability assumptions for relative effect measures. European Journal of Epidemiology, 39, 957-965.
    18. DeFinetti, B. (1975). The Theory of Probability, vol. 2. New York: Wiley.
    19. Discacciati, A., Orsini, N., Greenland, S. (2015). Approximate Bayesian logistic regression via penalized likelihood by data augmentation. The Stata Journal, 15(3), 712-736.
    20. Efron, B. (2010). Large-Scale Inference: Empirical Bayes Methods for Estimation, Testing, and Prediction. New York: Cambridge University Press.
    21. Fisher, R.A. (1934). Statistical Methods for Research Workers, 5th edn. London, Oliver Boyd.
    22. Fisher, R.A. (1936). Has Mendel’s work been rediscovered? Annals of Science, 1, 115-137.
    23. Fisher, R. A. (1955). Statistical methods and scientific induction. Journal of the Royal Statistical Society, Series B, 17(1), 69-78.
    24. Fox, M.P., MacLehose, R.F., Lash, T.L. (2021) Applying Quantitative Bias Analysis to Epidemiologic Data, 2nd edn. New York, Springer.
    25. Ganesh, S., D’Souza, D.C. (2022). Cannabis and psychosis: recent epidemiological findings continuing the “causality debate.” American Journal of Psychiatry, 179, 8-10.
    26. Gelman, A. (2016). The problems with P-values are not just with P-values. The American Statistician, 70, online discussion.
    27. Gelman, A. (2018). The failure of null hypothesis significance testing when studying incremental changes, and what to do about it. Personality and Social Psychology Bulletin, 44(1), 16-23.
    28. Gelman, A., Loken, (2014a). The statistical crisis in science. American Scientist, 102, 460–465.
    29. Gelman, A., Loken, (2014b). The AAA tranche of subprime science. Chance, 27(1), 51-56.
    30. Gelman, A., Carlin, J. B., Stern, H. S., Dunson, D. B., Vehtari, A., Rubin, D. B. (2013). Bayesian Data Analysis, third edition. London: Chapman and Hall.
    31. Gigerenzer, G. (2004). Mindless statistics. Journal of Socioeconomics, 33, 567–606.
    32. Gigerenzer, G., Marewski, J.N. (2015). Surrogate Science: The idol of a universal method for scientific inference. Journal of Management, 41, 421-440.
    33. Gigerenzer, G. (2018). Statistical rituals: the replication delusion and how we got there. Advances in Methods and Practices in Psychological Science. 1(2), 198-218.
    34. Gigerenzer, G., Krauss, S., Vitouch, O (2004). The null ritual: what you always wanted to know about significance testing but were afraid to ask. In: Kaplan, D., ed. The Sage handbook of quantitative methodology for the social sciences. Thousand Oaks: Sage Publications, 391-408.
    35. Glymour, M.M., Greenland, S. (2008). Causal diagrams. Ch. 12 in Rothman, K. J., Greenland, S., Lash, T.L. (2008), eds. Modern Epidemiology, 3rd edn. Philadelphia: Lippincott-Wolters-Kluwer.
    36. Good, I.J. (1983). Good Thinking. Minneapolis: University of Minnesota Press, Ch. 3, 20-21.
    37. Goodman, S.N., Berlin, J. (1994). The use of predicted confidence intervals when planning experiments and the misuse of power when interpreting results. Annals of Internal Medicine, 121, 200-206.
    38. Greenland, S. (2005). Multiple-bias modeling for analysis of observational data (with discussion). Journal of the Royal Statistical Society, Series A, 168, 267-308.
    39. Greenland, S. (2008a). Analysis of polytomous exposures and outcomes. Ch. 17 in Rothman, K. J., Greenland, S., Lash, T.L. (2008), eds. Modern Epidemiology, 3rd edn. Philadelphia: Lippincott-Wolters-Kluwer, 303-327.
    40. Greenland, S. (2008b). Introduction to Bayesian statistics. Ch. 18 in Rothman, K. J., Greenland, S., Lash, T.L. (2008), eds. Modern Epidemiology, 3rd edn. Philadelphia: Lippincott-Wolters-Kluwer, 328-344.
    41. Greenland, S. (2009). Accounting for uncertainty about investigator bias: disclosure is informative. American Journal of Epidemiology and Community Health, 63, 593–598.
    42. Greenland, S. (2011). Null misinterpretation in statistical testing and its impact on health risk assessment. Preventive Medicine, 53, 225-228.
    43. Greenland, S. (2012). Nonsignificance plus high power does not imply support for the null over the alternative. Annals of Epidemiology, 22, 364–368.
    44. Greenland, S. (2017). The need for cognitive science in methodology. American Journal of Epidemiology, 186, 639-645.
    45. Greenland, S. (2021a). Noncollapsibility, confounding, and sparse-data bias. Part 2: What should researchers make of persistent controversies about the odds ratio? Journal of Clinical Epidemiology, 139, 264-268.
    46. Greenland, S. (2021b). Analysis goals, error-cost sensitivity, and analysis hacking: essential considerations in hypothesis testing and multiple comparisons. Pediatric and Perinatal Epidemiology, 35, 8-23.
    47. Greenland, S. (2022). The causal foundations of applied probability and statistics. Ch. 31 in: Dechter, R., Halpern, J., and Geffner, H., eds. Probabilistic and Causal Inference: The Works of Judea Pearl. ACM Books, no. 36, 605-624.
    48. Greenland, S. (2023a). Divergence vs. decision P-values: A distinction worth making in theory and keeping in practice (with discussion). Scandinavian Journal of Statistics, 50(1), 1-35.
    49. Greenland, S. (2023b). Connecting simple and precise p-values to complex and ambiguous realities (includes rejoinder to comments on “Divergence vs. decision P-values”). Scandinavian Journal of Statistics, 50(3), 899-914.
    50. Greenland, S. (2024a). Regression methods for epidemiological analysis. Chapter 17 in: Ahrens, W., and Pigeot, I. (eds.). Handbook of Epidemiology, 3rd ed. New York: Springer.
    51. Greenland, S. (2024b). Sensitivity analysis and bias analysis. Chapter 60 in: Ahrens, W., and Pigeot, I. (eds.). Handbook of Epidemiology, 3rd edn. New York: Springer.
    52. Greenland, S. (2025). Some ways to make regression modeling more helpful than misleading. Statistics in Medicine, 44, in press.
    53. Greenland, S., Mansournia, M.A. (2015). Limitations of individual causal models, causal graphs, and ignorability assumptions, as illustrated by random confounding and design unfaithfulness. European Journal of Epidemiology, 30, 1101-1110.
    54. Greenland, S., Schlesselman, J. J., Criqui, M. H. (1986). the fallacy of employing standardized regression coefficients and correlations as measures of effect. American Journal of Epidemiology, 123, 203-208.
    55. Greenland, S., Maclure, M., Schlesselman, J. J., Poole, C., Morgenstern, H. (1991). Standardized regression coefficients: a further critique and a review of alternatives. Epidemiology, 2, 387-392.
    56. Greenland, S., Pearl, J., Robins, J. M. (1999). Causal diagrams for epidemiologic research. Epidemiology, 10, 37-48.
    57. Greenland, S., Mansournia, M.A., Altman, D.G. (2016a). Sparse-data bias: A problem hiding in plain sight. British Medical Journal, 353:i1981, 1-6.
    58. Greenland, S., Mansournia, M., Joffe, M. (2022). To curb research misreporting, replace significance and confidence by compatibility. Preventive Medicine, 164.
    59. Greenland, S., Senn, S.J., Rothman, K.J., Carlin, J.C., Poole, C., Goodman, S.N., Altman, D.G. (2016b). Statistical tests, confidence intervals, and power: A guide to misinterpretations. The American Statistician, 70(suppl.1), 1-12.
    60. Gustafson, P. (2015). Bayesian inference for partially identified models: Exploring the limits of limited data. Boca Raton, FL. CRC Press.
    61. Gutierrez, S., Glymour, M.M., Davey Smith, G. (2025). Evidence triangulation in health research. European Journal of Epidemiology, 40, 743-757.
    62. Haller, H., Krauss, S. (2002). Misinterpretations of significance: A problem students share with their teachers? Methods of Psychological Research, 7(1), 1-20.
    63. Harrell, F.E. (2015). Regression Modeling Strategies. Springer, New York.
    64. Hernán, M.A., Cole, S.R. (2009). Causal diagrams and measurement bias. American Journal of Epidemiology, 170, 959-962.
    65. Hernán, M.A., Robins, J.M. (2025). Causal Inference: What If? Chapman Hall, New York.
    66. Hill, A.B. (1965). The environment and disease: association or causation? Proceedings of the Royal Society of Medicine, 58, 295-300.
    67. Hoenig, J.M., Heisey, D.M. (2001). The abuse of power: the pervasive fallacy of power calculations for data analysis. The American Statistician, 55, 19-24.
    68. Hosmer, D.W., Lemeshow, S., Sturtevant, R.X. (2013). Applied Logistic Regression, 3rd edn. New York: Wiley.
    69. Ioannidis, J.P.A. (2008). Why most discovered true associations are inflated. Epidemiology, 19, 640-648.
    70. Jewell, N.P. (2004). Statistics for Epidemiology. Chapman & Hall/CRC, New York.
    71. Kummerfeld, E., Jones, G.L. (2023). One data set, many analysts: Implications for practicing scientists. Frontiers in Psychology, 14.
    72. Lakens, D., Adolfi, F. G., Albers, C., Anvari, F., Apps, M. A., Argamon, S. E., Baguley, T., Becker, R. B., Benning, S. D., Bradford, D. E., Buchanan, E. M., et al. (2018). Justify your alpha. Nature Human Behaviour, 2, 168-171.
    73. Lash, T.L., VanderWeele, T.J., Haneuse, S., Rothman, K.J. (2021). Modern Epidemiology, 4th edn. Philadelphia: Lippincott-Wolters-Kluwer.
    74. Lecoutre, M.-P., Poitevineau, J., Lecoutre, B. (2003). Even statisticians are not immune to misinterpretations of Null Hypothesis Tests. International Journal of Psychology, 38, 37-45.
    75. Little R.J.A., Rubin D.B. (2019). Statistical Analysis with Missing Data, 3rd edn. New York: Wiley.
    76. Mayo, D. (2018). Statistical Inference as Severe Testing. Cambridge University Press, New York.
    77. McElreath, R. (2020). Statistical Rethinking: A Bayesian Course with Examples in R and STAN, 2nd edn. Chapman Hall/CRC, New York.
    78. McShane, B., Gal, D. (2017). Statistical significance and the dichotomization of evidence. Journal of the American Statistical Association, 112.
    79. McShane, B.B., Gal, D., Gelman, A., Robert, C., Tackett, J.L. (2019). Abandon statistical significance. The American Statistician, 73(suppl.1), 99-105.
    80. McShane, B.B., Bradlow, E.T., Lynch Jr., J.G., Meyer, R.J. (2024). “Statistical significance” and statistical reporting: moving beyond binary. Journal of Marketing, 88(3), 1-19.
    81. Neyman, J. (1977). Frequentist probability and frequentist statistics. Synthese, 36, 97-131.
    82. Parmigiani, G., Inoue, L. (2009). Decision Theory: Principles and Approaches. New York: Wiley.
    83. Pearl, J. (2009). Causality: Models, Reasoning and Inference. 2nd edn. Cambridge: Cambridge University Press.
    84. Pearl, J., Glymour, M., Jewell, N.P. (2016). Causal Inference in Statistics: A Primer. New York: Wiley.
    85. Pearson, K. (1900). On the criterion that a given system of deviations from the probable in the case of a correlated system of variables is such that it can be reasonably supposed to have arisen from random sampling. London, Edinburgh, and Dublin Philosophical Magazine and Journal of Science, 50, 157-175.
    86. Pearson, K. (1906). Note on the significant or non-significant character of a subsample drawn from a sample. Biometrika, 5, 181-183.
    87. Poole, C. (1987). Beyond the confidence interval. Journal of the American Public Health Asssociation, 77, 195-199.
    88. Rafi, Z., Greenland, S. (2020). Semantic and cognitive tools to aid statistical science: Replace confidence and significance by compatibility and surprise. BMC Medical Research Methodology, 20, 244.
    89. Rosenthal, R., Rubin, D.B. (1979). A note on percent variance explained as a measure of importance of effects. Journal of Applied Social Psychology, 9, 395-396.
    90. Rosenthal, R., Rubin, D.B. (1985). Statistical analysis: Summarizing evidence versus establishing facts. Psychological Bulletin, 97(3), 527-529.
    91. Rosnow, R.L., Rosenthal, R. (1989). Statistical procedures and the justification of knowledge in psychological science. American Psychologist, 44, 1276-1284.
    92. Rothman, K.J. (1986). Significance questing. Annals of Internal Medicine, 105, 445-447.
    93. Rothman, K.J. (1990). No adjustments are needed for multiple comparisons. Epidemiology, 1, 43-46.
    94. Rovetta, A., Piretta, L., Mansournia, M.A. (2025). P-values and confidence intervals as compatibility measures: Guidelines for interpreting statistical studies in clinical research. The Lancet Regional Health Southeast Asia, 33, 1-3.
    95. Rubenstein, S. (2009). A new low in drug research: 21 fabricated studies. The Wall Street Journal, 11 March.
    96. Rubin, M. (2024). Inconsistent multiple testing corrections: The fallacy of using family-based error rates to make inferences about individual hypotheses. Methods in Psychology, 10, 100140.
    97. Senn, S. (2002). Power is indeed irrelevant in interpreting completed studies. BMJ 325, 1304.
    98. Shafer, G. (2020). On the nineteenth-century origins of significance testing and p-hacking. Game-Theoretic Probability and Finance Project, Working Paper 55, rev. 11 June 2020.
    99. Silberzahn, R., Uhlmann, E. L., Martin, D. P., Anselmi, P., Aust, F., Awtrey, E., Nosek, B. A. (2018). Many analysts, one data set: Making transparent how variations in analytic choices affect results. Advances in Methods and Practices in Psychological Science, 1, 337–356.
    100. Skellam, J.G. (1969). Models, inference, and strategy. Biometrics, 25(3), 457-475.
    101. Stigler, S.M. (1986). The History of Statistics: The Measurement of Uncertainty before 1900. Harvard University Press, Cambridge, MA.
    102. Sullivan, S., Greenland, S. (2013). Bayesian regression in SAS software. International Journal of Epidemiology, 42, 308-317.
    103. Ting, C., Greenland, S. (2024). Forcing a deterministic frame on probabilistic phenomena: A communication blind spot in media coverage of the “replication crisis.” Science Communication, 46, 672-684.
    104. Tukey, J. W. (1954). Causation, regression, and path analysis. In: Kempthorne, O., ed. Statistics and Mathematics in Biology. Ames: Iowa State College Press, 35-66.
    105. van Calster, B., Steyerberg, E.W., Collins, G.S., Smits, T. (2018). Consequences of relying on statistical significance: some illustrations. European Journal of Clinical Investigation, 48(5), e12912.
    106. van Zwet, E.W., Cator, E.A. (2021). The significance filter, the winner’s curse and the need to shrink. Statistica Neerlandica, 75, 437-452.
    107. VanderWeele, T.J. (2015). Explanation in Causal Inference: Methods for Mediation and Interaction. New York: Oxford University Press.
    108. Wasserstein, R.L., Lazar, N.A. (2016). The ASA's statement on p-values: Context, process, and purpose. The American Statistician, 70, 129-133.
    109. Wasserstein, R.L., Schirm, A.L., Lazar, N.A. (2019). Moving to a world beyond “p<0.05”. The American Statistician, 73, 1-19.

---
