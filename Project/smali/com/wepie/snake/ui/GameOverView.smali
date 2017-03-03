.class public Lcom/wepie/snake/ui/GameOverView;
.super Landroid/widget/LinearLayout;
.source "GameOverView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private gameOverViewBack:Landroid/widget/LinearLayout;

.field private gameOverViewBackicon:Landroid/widget/ImageView;

.field private gameOverViewKill:Landroid/widget/TextView;

.field private gameOverViewLength:Landroid/widget/TextView;

.field private gameOverViewRestart:Landroid/widget/LinearLayout;

.field private gameOverViewShow:Landroid/widget/LinearLayout;

.field private mContext:Landroid/content/Context;

.field private revivebt:Landroid/widget/ImageView;

.field private shareView:Lcom/wepie/snake/ui/ShareView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/wepie/snake/ui/GameOverView;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/wepie/snake/ui/GameOverView;->init()V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    iput-object p1, p0, Lcom/wepie/snake/ui/GameOverView;->mContext:Landroid/content/Context;

    .line 44
    invoke-direct {p0}, Lcom/wepie/snake/ui/GameOverView;->init()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/ui/GameOverView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/ui/GameOverView;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 48
    iget-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040023

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 49
    const v0, 0x7f0d0079

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/GameOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewLength:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0d007b

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/GameOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewKill:Landroid/widget/TextView;

    .line 52
    const v0, 0x7f0d007d

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/GameOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewShow:Landroid/widget/LinearLayout;

    .line 53
    const v0, 0x7f0d007e

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/GameOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewBack:Landroid/widget/LinearLayout;

    .line 54
    const v0, 0x7f0d007f

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/GameOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewRestart:Landroid/widget/LinearLayout;

    .line 55
    const v0, 0x7f0d0080

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/GameOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewBackicon:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0d007c

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/GameOverView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->revivebt:Landroid/widget/ImageView;

    .line 58
    new-instance v0, Lcom/wepie/snake/ui/ShareView;

    iget-object v1, p0, Lcom/wepie/snake/ui/GameOverView;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/wepie/snake/ui/ShareView;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->shareView:Lcom/wepie/snake/ui/ShareView;

    .line 60
    iget-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewShow:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewBack:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewRestart:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewBackicon:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->revivebt:Landroid/widget/ImageView;

    new-instance v1, Lcom/wepie/snake/ui/GameOverView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/ui/GameOverView$1;-><init>(Lcom/wepie/snake/ui/GameOverView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-void
.end method

.method private sendScore(III)V
    .locals 2
    .param p1, "kill"    # I
    .param p2, "length"    # I
    .param p3, "gameType"    # I

    .prologue
    .line 85
    new-instance v0, Lcom/wepie/snake/module/net/handler/SendScoreHandler;

    new-instance v1, Lcom/wepie/snake/ui/GameOverView$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/ui/GameOverView$2;-><init>(Lcom/wepie/snake/ui/GameOverView;)V

    invoke-direct {v0, v1}, Lcom/wepie/snake/module/net/handler/SendScoreHandler;-><init>(Lcom/wepie/snake/module/net/handler/SendScoreHandler$Callback;)V

    invoke-static {p1, p2, p3, v0}, Lcom/wepie/snake/module/net/HttpUtil;->sendScore(IIILcom/wepie/snake/module/net/handler/SendScoreHandler;)V

    .line 97
    return-void
.end method


# virtual methods
.method public doHide()V
    .locals 1

    .prologue
    .line 123
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/GameOverView;->setVisibility(I)V

    .line 124
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewShow:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 102
    new-instance v0, Lcom/wepie/snake/ui/DialogView;

    iget-object v1, p0, Lcom/wepie/snake/ui/GameOverView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/wepie/snake/ui/GameOverView;->shareView:Lcom/wepie/snake/ui/ShareView;

    invoke-direct {v0, v1, v2}, Lcom/wepie/snake/ui/DialogView;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 103
    .local v0, "dialogView":Lcom/wepie/snake/ui/DialogView;
    iget-object v1, p0, Lcom/wepie/snake/ui/GameOverView;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showView(Landroid/content/Context;Landroid/view/View;)V

    .line 120
    .end local v0    # "dialogView":Lcom/wepie/snake/ui/DialogView;
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewBack:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_2

    .line 107
    iget-object v1, p0, Lcom/wepie/snake/ui/GameOverView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 110
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewRestart:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getId()I

    move-result v2

    if-ne v1, v2, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/wepie/snake/ui/GameOverView;->doHide()V

    .line 112
    iget-object v1, p0, Lcom/wepie/snake/ui/GameOverView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/wepie/snake/activity/GameActivity;

    invoke-virtual {v1}, Lcom/wepie/snake/activity/GameActivity;->doReStartGame()V

    .line 113
    invoke-static {}, Lcom/wepie/snake/module/util/VoiceUtil;->getInstance()Lcom/wepie/snake/module/util/VoiceUtil;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wepie/snake/module/util/VoiceUtil;->playBgVoice()V

    goto :goto_0

    .line 116
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    iget-object v2, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewBackicon:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getId()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 117
    iget-object v1, p0, Lcom/wepie/snake/ui/GameOverView;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public setData(III)V
    .locals 3
    .param p1, "kill"    # I
    .param p2, "length"    # I
    .param p3, "gameType"    # I

    .prologue
    .line 77
    iget-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewLength:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->gameOverViewKill:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/wepie/snake/ui/GameOverView;->sendScore(III)V

    .line 81
    iget-object v0, p0, Lcom/wepie/snake/ui/GameOverView;->shareView:Lcom/wepie/snake/ui/ShareView;

    invoke-virtual {v0, p2}, Lcom/wepie/snake/ui/ShareView;->setScore(I)V

    .line 82
    return-void
.end method
