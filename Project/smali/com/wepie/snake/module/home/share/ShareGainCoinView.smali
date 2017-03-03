.class public Lcom/wepie/snake/module/home/share/ShareGainCoinView;
.super Landroid/widget/LinearLayout;
.source "ShareGainCoinView.java"

# interfaces
.implements Lcom/wepie/snake/helper/dialog/ICloseView;


# instance fields
.field private closeBt:Landroid/widget/ImageView;

.field public mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

.field private mContext:Landroid/content/Context;

.field private shareBt:Landroid/widget/TextView;

.field private shareUrlTx:Landroid/widget/TextView;

.field private todayGainTx:Landroid/widget/TextView;

.field private totalGainTx:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->mContext:Landroid/content/Context;

    .line 35
    invoke-direct {p0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->init()V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    iput-object p1, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->mContext:Landroid/content/Context;

    .line 41
    invoke-direct {p0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->init()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/home/share/ShareGainCoinView;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/share/ShareGainCoinView;
    .param p1, "x1"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->updateShareInfo(Lcom/wepie/snake/module/net/entity/UserShareInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/wepie/snake/module/home/share/ShareGainCoinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040041

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    const v0, 0x7f0d0102

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->shareUrlTx:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0d0104

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->totalGainTx:Landroid/widget/TextView;

    .line 48
    const v0, 0x7f0d0106

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->todayGainTx:Landroid/widget/TextView;

    .line 49
    const v0, 0x7f0d0107

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->shareBt:Landroid/widget/TextView;

    .line 50
    const v0, 0x7f0d0108

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->closeBt:Landroid/widget/ImageView;

    .line 52
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->closeBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/wepie/snake/module/home/share/ShareGainCoinView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView$1;-><init>(Lcom/wepie/snake/module/home/share/ShareGainCoinView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->shareBt:Landroid/widget/TextView;

    new-instance v1, Lcom/wepie/snake/module/home/share/ShareGainCoinView$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView$2;-><init>(Lcom/wepie/snake/module/home/share/ShareGainCoinView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    invoke-direct {p0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->update()V

    .line 67
    return-void
.end method

.method private update()V
    .locals 3

    .prologue
    .line 70
    invoke-static {}, Lcom/wepie/snake/module/home/share/ShareInfoManager;->getInstance()Lcom/wepie/snake/module/home/share/ShareInfoManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wepie/snake/module/home/share/ShareInfoManager;->getUserShareInfo()Lcom/wepie/snake/module/net/entity/UserShareInfo;

    move-result-object v0

    .line 71
    .local v0, "userShareInfo":Lcom/wepie/snake/module/net/entity/UserShareInfo;
    invoke-direct {p0, v0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->updateShareInfo(Lcom/wepie/snake/module/net/entity/UserShareInfo;)V

    .line 73
    invoke-static {}, Lcom/wepie/snake/module/home/share/ShareInfoManager;->getInstance()Lcom/wepie/snake/module/home/share/ShareInfoManager;

    move-result-object v1

    new-instance v2, Lcom/wepie/snake/module/home/share/ShareGainCoinView$3;

    invoke-direct {v2, p0}, Lcom/wepie/snake/module/home/share/ShareGainCoinView$3;-><init>(Lcom/wepie/snake/module/home/share/ShareGainCoinView;)V

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/home/share/ShareInfoManager;->getServerShareInfo(Lcom/wepie/snake/module/net/handler/ShareInfoHandler$ShareInfoCallback;)V

    .line 84
    return-void
.end method

.method private updateShareInfo(Lcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 3
    .param p1, "userShareInfo"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 88
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->shareUrlTx:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/wepie/snake/module/net/entity/UserShareInfo;->share_link:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->todayGainTx:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/wepie/snake/module/net/entity/UserShareInfo;->today_reward:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->totalGainTx:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p1, Lcom/wepie/snake/module/net/entity/UserShareInfo;->total_reward:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v0, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->shareBt:Landroid/widget/TextView;

    new-instance v1, Lcom/wepie/snake/module/home/share/ShareGainCoinView$4;

    invoke-direct {v1, p0, p1}, Lcom/wepie/snake/module/home/share/ShareGainCoinView$4;-><init>(Lcom/wepie/snake/module/home/share/ShareGainCoinView;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method


# virtual methods
.method public registerOnCloseListener(Lcom/wepie/snake/helper/dialog/CloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/wepie/snake/helper/dialog/CloseListener;

    .prologue
    .line 107
    iput-object p1, p0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    .line 108
    return-void
.end method
