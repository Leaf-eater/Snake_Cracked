.class public Lcom/wepie/snake/module/game/GameInfoView;
.super Landroid/widget/LinearLayout;
.source "GameInfoView.java"


# instance fields
.field private fpsTx:Landroid/widget/TextView;

.field private gameOverView:Lcom/wepie/snake/ui/GameOverView;

.field public gameRankView:Lcom/wepie/snake/ui/GameRankView;

.field private killCount:I

.field private killTx:Landroid/widget/TextView;

.field private length:I

.field private lengthTx:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 32
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->killCount:I

    .line 29
    iput v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->length:I

    .line 33
    iput-object p1, p0, Lcom/wepie/snake/module/game/GameInfoView;->mContext:Landroid/content/Context;

    .line 34
    invoke-direct {p0}, Lcom/wepie/snake/module/game/GameInfoView;->init()V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    iput v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->killCount:I

    .line 29
    iput v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->length:I

    .line 39
    iput-object p1, p0, Lcom/wepie/snake/module/game/GameInfoView;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/wepie/snake/module/game/GameInfoView;->init()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/game/GameInfoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 21
    iget v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->killCount:I

    return v0
.end method

.method static synthetic access$002(Lcom/wepie/snake/module/game/GameInfoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/GameInfoView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/wepie/snake/module/game/GameInfoView;->killCount:I

    return p1
.end method

.method static synthetic access$100(Lcom/wepie/snake/module/game/GameInfoView;)I
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 21
    iget v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->length:I

    return v0
.end method

.method static synthetic access$102(Lcom/wepie/snake/module/game/GameInfoView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/game/GameInfoView;
    .param p1, "x1"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/wepie/snake/module/game/GameInfoView;->length:I

    return p1
.end method

.method static synthetic access$200(Lcom/wepie/snake/module/game/GameInfoView;)Lcom/wepie/snake/ui/GameOverView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->gameOverView:Lcom/wepie/snake/ui/GameOverView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wepie/snake/module/game/GameInfoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->lengthTx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wepie/snake/module/game/GameInfoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->killTx:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wepie/snake/module/game/GameInfoView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/game/GameInfoView;

    .prologue
    .line 21
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->fpsTx:Landroid/widget/TextView;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040022

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    const v0, 0x7f0d0071

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/GameInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->lengthTx:Landroid/widget/TextView;

    .line 46
    const v0, 0x7f0d0072

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/GameInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->killTx:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0d0073

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/GameInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->fpsTx:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0d0074

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/GameInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/ui/GameRankView;

    iput-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->gameRankView:Lcom/wepie/snake/ui/GameRankView;

    .line 49
    const v0, 0x7f0d0075

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/GameInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/ui/GameOverView;

    iput-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->gameOverView:Lcom/wepie/snake/ui/GameOverView;

    .line 50
    return-void
.end method


# virtual methods
.method public doEatFood(I)V
    .locals 1
    .param p1, "score"    # I

    .prologue
    .line 63
    new-instance v0, Lcom/wepie/snake/module/game/GameInfoView$2;

    invoke-direct {v0, p0, p1}, Lcom/wepie/snake/module/game/GameInfoView$2;-><init>(Lcom/wepie/snake/module/game/GameInfoView;I)V

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/GameInfoView;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method public doFPSRefresh(F)V
    .locals 3
    .param p1, "fps"    # F

    .prologue
    .line 83
    const-string v0, "999"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "----->doFPSRefresh fps="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    new-instance v0, Lcom/wepie/snake/module/game/GameInfoView$4;

    invoke-direct {v0, p0, p1}, Lcom/wepie/snake/module/game/GameInfoView$4;-><init>(Lcom/wepie/snake/module/game/GameInfoView;F)V

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/GameInfoView;->post(Ljava/lang/Runnable;)Z

    .line 90
    return-void
.end method

.method public doGameOver(I)V
    .locals 1
    .param p1, "gameType"    # I

    .prologue
    .line 53
    new-instance v0, Lcom/wepie/snake/module/game/GameInfoView$1;

    invoke-direct {v0, p0, p1}, Lcom/wepie/snake/module/game/GameInfoView$1;-><init>(Lcom/wepie/snake/module/game/GameInfoView;I)V

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/GameInfoView;->post(Ljava/lang/Runnable;)Z

    .line 60
    return-void
.end method

.method public doKillAi(I)V
    .locals 1
    .param p1, "killNum"    # I

    .prologue
    .line 73
    new-instance v0, Lcom/wepie/snake/module/game/GameInfoView$3;

    invoke-direct {v0, p0, p1}, Lcom/wepie/snake/module/game/GameInfoView$3;-><init>(Lcom/wepie/snake/module/game/GameInfoView;I)V

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/GameInfoView;->post(Ljava/lang/Runnable;)Z

    .line 80
    return-void
.end method

.method public doRefreshTime(Ljava/lang/String;)V
    .locals 1
    .param p1, "timeString"    # Ljava/lang/String;

    .prologue
    .line 93
    new-instance v0, Lcom/wepie/snake/module/game/GameInfoView$5;

    invoke-direct {v0, p0, p1}, Lcom/wepie/snake/module/game/GameInfoView$5;-><init>(Lcom/wepie/snake/module/game/GameInfoView;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/GameInfoView;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method public hideGamerOverView()V
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->gameOverView:Lcom/wepie/snake/ui/GameOverView;

    invoke-virtual {v0}, Lcom/wepie/snake/ui/GameOverView;->doHide()V

    .line 116
    return-void
.end method

.method public isGamerOverShow()Z
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/wepie/snake/module/game/GameInfoView;->gameOverView:Lcom/wepie/snake/ui/GameOverView;

    invoke-virtual {v0}, Lcom/wepie/snake/ui/GameOverView;->isShown()Z

    move-result v0

    return v0
.end method

.method public refreshGameRank(Ljava/util/ArrayList;)V
    .locals 1
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
    .line 102
    .local p1, "snakeInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/wepie/snake/module/game/snake/SnakeInfo;>;"
    new-instance v0, Lcom/wepie/snake/module/game/GameInfoView$6;

    invoke-direct {v0, p0, p1}, Lcom/wepie/snake/module/game/GameInfoView$6;-><init>(Lcom/wepie/snake/module/game/GameInfoView;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/game/GameInfoView;->post(Ljava/lang/Runnable;)Z

    .line 108
    return-void
.end method
