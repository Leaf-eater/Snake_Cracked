.class public Lcom/wepie/snake/ui/RankView;
.super Landroid/widget/LinearLayout;
.source "RankView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wepie/snake/module/home/IHomeDisplayView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/ui/RankView$RankAdapter;
    }
.end annotation


# static fields
.field private static final RANK_TYPE_KILL:I = 0x2

.field private static final RANK_TYPE_LENGTH:I = 0x1


# instance fields
.field private backIv:Landroid/widget/ImageView;

.field private endlessBt:Landroid/widget/LinearLayout;

.field private endlessIcon:Landroid/widget/ImageView;

.field private gameType:I

.field private killRankBt:Landroid/widget/TextView;

.field private killTile:Landroid/widget/TextView;

.field private lengthRankBt:Landroid/widget/TextView;

.field private limitBt:Landroid/widget/LinearLayout;

.field private limitIcon:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

.field private rankAdapter:Lcom/wepie/snake/ui/RankView$RankAdapter;

.field private rankList:Landroid/widget/ListView;

.field private rankType:I

.field private scoreInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/net/entity/ScoreInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->scoreInfos:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/wepie/snake/ui/RankView;->gameType:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/wepie/snake/ui/RankView;->rankType:I

    .line 48
    new-instance v0, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    invoke-direct {v0}, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    .line 53
    iput-object p1, p0, Lcom/wepie/snake/ui/RankView;->mContext:Landroid/content/Context;

    .line 54
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->init()V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->scoreInfos:Ljava/util/ArrayList;

    .line 46
    const/4 v0, 0x2

    iput v0, p0, Lcom/wepie/snake/ui/RankView;->gameType:I

    .line 47
    const/4 v0, 0x1

    iput v0, p0, Lcom/wepie/snake/ui/RankView;->rankType:I

    .line 48
    new-instance v0, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    invoke-direct {v0}, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    .line 59
    iput-object p1, p0, Lcom/wepie/snake/ui/RankView;->mContext:Landroid/content/Context;

    .line 60
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->init()V

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/wepie/snake/ui/RankView;Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;)Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/ui/RankView;
    .param p1, "x1"    # Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/wepie/snake/ui/RankView;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    return-object p1
.end method

.method static synthetic access$100(Lcom/wepie/snake/ui/RankView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/ui/RankView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->updateAdepter()V

    return-void
.end method

.method static synthetic access$300(Lcom/wepie/snake/ui/RankView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/ui/RankView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->scoreInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wepie/snake/ui/RankView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/ui/RankView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04003c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 66
    const v0, 0x7f0d00eb

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/RankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->lengthRankBt:Landroid/widget/TextView;

    .line 67
    const v0, 0x7f0d00ec

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/RankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->killRankBt:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0d00f6

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/RankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->rankList:Landroid/widget/ListView;

    .line 69
    const v0, 0x7f0d00f7

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/RankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->backIv:Landroid/widget/ImageView;

    .line 70
    const v0, 0x7f0d00f5

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/RankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->killTile:Landroid/widget/TextView;

    .line 71
    const v0, 0x7f0d00ee

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/RankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->limitBt:Landroid/widget/LinearLayout;

    .line 72
    const v0, 0x7f0d00f1

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/RankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->endlessBt:Landroid/widget/LinearLayout;

    .line 73
    const v0, 0x7f0d00ef

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/RankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->limitIcon:Landroid/widget/ImageView;

    .line 74
    const v0, 0x7f0d00f2

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/RankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->endlessIcon:Landroid/widget/ImageView;

    .line 76
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->backIv:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->lengthRankBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->killRankBt:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->limitBt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->endlessBt:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->initList()V

    .line 83
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->initLocalData()V

    .line 84
    invoke-virtual {p0}, Lcom/wepie/snake/ui/RankView;->refresh()V

    .line 85
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->refreshGameTypeIcon()V

    .line 86
    return-void
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 120
    new-instance v0, Lcom/wepie/snake/ui/RankView$RankAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wepie/snake/ui/RankView$RankAdapter;-><init>(Lcom/wepie/snake/ui/RankView;Lcom/wepie/snake/ui/RankView$1;)V

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->rankAdapter:Lcom/wepie/snake/ui/RankView$RankAdapter;

    .line 121
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->rankList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/wepie/snake/ui/RankView;->rankAdapter:Lcom/wepie/snake/ui/RankView$RankAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 122
    return-void
.end method

.method private initLocalData()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Lcom/wepie/snake/ui/RankManager;->getInstance()Lcom/wepie/snake/ui/RankManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wepie/snake/ui/RankManager;->getLocalRank()Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/ui/RankView;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    .line 90
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->updateAdepter()V

    .line 91
    return-void
.end method

.method private refreshGameTypeIcon()V
    .locals 2

    .prologue
    .line 143
    iget v0, p0, Lcom/wepie/snake/ui/RankView;->gameType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 144
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->limitIcon:Landroid/widget/ImageView;

    const v1, 0x7f02006b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 145
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->endlessIcon:Landroid/widget/ImageView;

    const v1, 0x7f02006a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 150
    :goto_0
    return-void

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->limitIcon:Landroid/widget/ImageView;

    const v1, 0x7f02006c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 148
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->endlessIcon:Landroid/widget/ImageView;

    const v1, 0x7f020069

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method private showIndicate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    iget v0, p0, Lcom/wepie/snake/ui/RankView;->rankType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 126
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->lengthRankBt:Landroid/widget/TextView;

    const v1, 0x7f0200be

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 127
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->lengthRankBt:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 129
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->killRankBt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 130
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->killRankBt:Landroid/widget/TextView;

    const-string v1, "#ff5758"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 131
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->killTile:Landroid/widget/TextView;

    const-string v1, "\u957f\u5ea6"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->killRankBt:Landroid/widget/TextView;

    const v1, 0x7f0200bf

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 134
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->killRankBt:Landroid/widget/TextView;

    const-string v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->lengthRankBt:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 137
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->lengthRankBt:Landroid/widget/TextView;

    const-string v1, "#ff5758"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 138
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->killTile:Landroid/widget/TextView;

    const-string v1, "\u51fb\u6740"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateAdepter()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 175
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->scoreInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 176
    iget v0, p0, Lcom/wepie/snake/ui/RankView;->gameType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 177
    iget v0, p0, Lcom/wepie/snake/ui/RankView;->rankType:I

    if-ne v0, v2, :cond_0

    .line 178
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->scoreInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wepie/snake/ui/RankView;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    iget-object v1, v1, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;->challengeLengthArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 189
    :goto_0
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->rankAdapter:Lcom/wepie/snake/ui/RankView$RankAdapter;

    invoke-virtual {v0}, Lcom/wepie/snake/ui/RankView$RankAdapter;->notifyDataSetChanged()V

    .line 190
    return-void

    .line 180
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->scoreInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wepie/snake/ui/RankView;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    iget-object v1, v1, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;->challengeKillArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 183
    :cond_1
    iget v0, p0, Lcom/wepie/snake/ui/RankView;->rankType:I

    if-ne v0, v2, :cond_2

    .line 184
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->scoreInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wepie/snake/ui/RankView;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    iget-object v1, v1, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;->endlessLengthArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 186
    :cond_2
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->scoreInfos:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/wepie/snake/ui/RankView;->mRankInfo:Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;

    iget-object v1, v1, Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfo;->endlessKillArray:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 154
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->backIv:Landroid/widget/ImageView;

    if-ne p1, v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->mContext:Landroid/content/Context;

    check-cast v0, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v0}, Lcom/wepie/snake/activity/HomeActivity;->showHomeView()V

    .line 172
    :goto_0
    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->limitBt:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 159
    iput v2, p0, Lcom/wepie/snake/ui/RankView;->gameType:I

    .line 160
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->refreshGameTypeIcon()V

    .line 171
    :cond_1
    :goto_1
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->updateAdepter()V

    goto :goto_0

    .line 161
    :cond_2
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->endlessBt:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    .line 162
    iput v1, p0, Lcom/wepie/snake/ui/RankView;->gameType:I

    .line 163
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->refreshGameTypeIcon()V

    goto :goto_1

    .line 164
    :cond_3
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->lengthRankBt:Landroid/widget/TextView;

    if-ne p1, v0, :cond_4

    .line 165
    iput v1, p0, Lcom/wepie/snake/ui/RankView;->rankType:I

    .line 166
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->showIndicate()V

    goto :goto_1

    .line 167
    :cond_4
    iget-object v0, p0, Lcom/wepie/snake/ui/RankView;->killRankBt:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 168
    iput v2, p0, Lcom/wepie/snake/ui/RankView;->rankType:I

    .line 169
    invoke-direct {p0}, Lcom/wepie/snake/ui/RankView;->showIndicate()V

    goto :goto_1
.end method

.method public onEnter()V
    .locals 0

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/wepie/snake/ui/RankView;->refresh()V

    .line 112
    return-void
.end method

.method public onExit()V
    .locals 0

    .prologue
    .line 117
    return-void
.end method

.method public refresh()V
    .locals 2

    .prologue
    .line 95
    invoke-static {}, Lcom/wepie/snake/ui/RankManager;->getInstance()Lcom/wepie/snake/ui/RankManager;

    move-result-object v0

    new-instance v1, Lcom/wepie/snake/ui/RankView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/ui/RankView$1;-><init>(Lcom/wepie/snake/ui/RankView;)V

    invoke-virtual {v0, v1}, Lcom/wepie/snake/ui/RankManager;->getServerRank(Lcom/wepie/snake/module/net/handler/RankInfoHandler$RankInfoCallback;)V

    .line 107
    return-void
.end method
