.class public Lcom/wepie/snake/ui/GameRankView;
.super Landroid/widget/LinearLayout;
.source "GameRankView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/ui/GameRankView$RankComparator;,
        Lcom/wepie/snake/ui/GameRankView$RankInfo;,
        Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;
    }
.end annotation


# instance fields
.field private gameRankAdapter:Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;

.field private listView:Landroid/widget/ListView;

.field private mContext:Landroid/content/Context;

.field private rankComparator:Lcom/wepie/snake/ui/GameRankView$RankComparator;

.field private rankInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/ui/GameRankView$RankInfo;",
            ">;"
        }
    .end annotation
.end field

.field private todayNickTx:Landroid/widget/TextView;

.field private todayScoreTx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->rankInfos:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lcom/wepie/snake/ui/GameRankView$RankComparator;

    invoke-direct {v0, p0}, Lcom/wepie/snake/ui/GameRankView$RankComparator;-><init>(Lcom/wepie/snake/ui/GameRankView;)V

    iput-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->rankComparator:Lcom/wepie/snake/ui/GameRankView$RankComparator;

    .line 38
    iput-object p1, p0, Lcom/wepie/snake/ui/GameRankView;->mContext:Landroid/content/Context;

    .line 39
    invoke-direct {p0}, Lcom/wepie/snake/ui/GameRankView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->rankInfos:Ljava/util/ArrayList;

    .line 32
    new-instance v0, Lcom/wepie/snake/ui/GameRankView$RankComparator;

    invoke-direct {v0, p0}, Lcom/wepie/snake/ui/GameRankView$RankComparator;-><init>(Lcom/wepie/snake/ui/GameRankView;)V

    iput-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->rankComparator:Lcom/wepie/snake/ui/GameRankView$RankComparator;

    .line 44
    iput-object p1, p0, Lcom/wepie/snake/ui/GameRankView;->mContext:Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Lcom/wepie/snake/ui/GameRankView;->init()V

    .line 46
    return-void
.end method

.method static synthetic access$100(Lcom/wepie/snake/ui/GameRankView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/ui/GameRankView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->todayNickTx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wepie/snake/ui/GameRankView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/ui/GameRankView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->todayScoreTx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wepie/snake/ui/GameRankView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/ui/GameRankView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->rankInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wepie/snake/ui/GameRankView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/ui/GameRankView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040024

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    const v0, 0x7f0d0084

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/GameRankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->listView:Landroid/widget/ListView;

    .line 51
    const v0, 0x7f0d0083

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/GameRankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->todayNickTx:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0d0082

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/GameRankView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->todayScoreTx:Landroid/widget/TextView;

    .line 53
    new-instance v0, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;-><init>(Lcom/wepie/snake/ui/GameRankView;Lcom/wepie/snake/ui/GameRankView$1;)V

    iput-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->gameRankAdapter:Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;

    .line 54
    iget-object v0, p0, Lcom/wepie/snake/ui/GameRankView;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/wepie/snake/ui/GameRankView;->gameRankAdapter:Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 55
    return-void
.end method

.method private initRankInfos(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 102
    iget-object v2, p0, Lcom/wepie/snake/ui/GameRankView;->rankInfos:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p1, :cond_0

    .line 104
    new-instance v1, Lcom/wepie/snake/ui/GameRankView$RankInfo;

    invoke-direct {v1, p0}, Lcom/wepie/snake/ui/GameRankView$RankInfo;-><init>(Lcom/wepie/snake/ui/GameRankView;)V

    .line 105
    .local v1, "rankInfo":Lcom/wepie/snake/ui/GameRankView$RankInfo;
    iget-object v2, p0, Lcom/wepie/snake/ui/GameRankView;->rankInfos:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 107
    .end local v1    # "rankInfo":Lcom/wepie/snake/ui/GameRankView$RankInfo;
    :cond_0
    return-void
.end method


# virtual methods
.method public refresh(Ljava/util/ArrayList;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/module/game/snake/SnakeInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p1, "snakeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/SnakeInfo;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 61
    .local v3, "size":I
    iget-object v5, p0, Lcom/wepie/snake/ui/GameRankView;->rankInfos:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v3}, Lcom/wepie/snake/ui/GameRankView;->initRankInfos(I)V

    .line 63
    :cond_0
    iget-object v5, p0, Lcom/wepie/snake/ui/GameRankView;->rankComparator:Lcom/wepie/snake/ui/GameRankView$RankComparator;

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 64
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 65
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/module/game/snake/SnakeInfo;

    .line 66
    .local v4, "snakeInfo":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    iget-object v5, p0, Lcom/wepie/snake/ui/GameRankView;->rankInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wepie/snake/ui/GameRankView$RankInfo;

    .line 67
    .local v2, "rankInfo":Lcom/wepie/snake/ui/GameRankView$RankInfo;
    iget-boolean v5, v4, Lcom/wepie/snake/module/game/snake/SnakeInfo;->isSnakeAi:Z

    if-nez v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    iput-boolean v5, v2, Lcom/wepie/snake/ui/GameRankView$RankInfo;->isSelf:Z

    .line 68
    iget-object v5, v4, Lcom/wepie/snake/module/game/snake/SnakeInfo;->name:Ljava/lang/String;

    iput-object v5, v2, Lcom/wepie/snake/ui/GameRankView$RankInfo;->name:Ljava/lang/String;

    .line 69
    invoke-virtual {v4}, Lcom/wepie/snake/module/game/snake/SnakeInfo;->getLength()I

    move-result v5

    iput v5, v2, Lcom/wepie/snake/ui/GameRankView$RankInfo;->score:I

    .line 64
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 67
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 71
    .end local v2    # "rankInfo":Lcom/wepie/snake/ui/GameRankView$RankInfo;
    .end local v4    # "snakeInfo":Lcom/wepie/snake/module/game/snake/SnakeInfo;
    :cond_2
    iget-object v5, p0, Lcom/wepie/snake/ui/GameRankView;->gameRankAdapter:Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;

    invoke-virtual {v5}, Lcom/wepie/snake/ui/GameRankView$GameRankAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    .end local v1    # "i":I
    .end local v3    # "size":I
    :goto_2
    return-void

    .line 72
    :catch_0
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method

.method public updateTodayBestInfo(I)V
    .locals 2
    .param p1, "gameType"    # I

    .prologue
    .line 78
    invoke-static {}, Lcom/wepie/snake/ui/RankManager;->getInstance()Lcom/wepie/snake/ui/RankManager;

    move-result-object v0

    new-instance v1, Lcom/wepie/snake/ui/GameRankView$1;

    invoke-direct {v1, p0, p1}, Lcom/wepie/snake/ui/GameRankView$1;-><init>(Lcom/wepie/snake/ui/GameRankView;I)V

    invoke-virtual {v0, v1}, Lcom/wepie/snake/ui/RankManager;->getTodayRankInfo(Lcom/wepie/snake/module/net/handler/TodayRankHandler$TodayRankCallback;)V

    .line 99
    return-void
.end method
