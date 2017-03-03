.class public Lcom/wepie/snake/module/home/skin/SkinView;
.super Landroid/widget/LinearLayout;
.source "SkinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;
    }
.end annotation


# instance fields
.field private adapter:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

.field private backBt:Landroid/widget/ImageView;

.field private coinTx:Landroid/widget/TextView;

.field private gridView:Landroid/widget/GridView;

.field mAllSkins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/helper/config/SkinConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field mUserSkins:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/wepie/snake/helper/config/SkinConfig;",
            ">;"
        }
    .end annotation
.end field

.field private shareBt:Landroid/widget/ImageView;

.field private shareGainCoinView:Lcom/wepie/snake/module/home/share/ShareGainCoinView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mUserSkins:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mAllSkins:Ljava/util/ArrayList;

    .line 46
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mContext:Landroid/content/Context;

    .line 47
    invoke-direct {p0}, Lcom/wepie/snake/module/home/skin/SkinView;->init()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mUserSkins:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mAllSkins:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mContext:Landroid/content/Context;

    .line 53
    invoke-direct {p0}, Lcom/wepie/snake/module/home/skin/SkinView;->init()V

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/home/skin/SkinView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wepie/snake/module/home/skin/SkinView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wepie/snake/module/home/skin/SkinView;->showShareView()V

    return-void
.end method

.method static synthetic access$200(Lcom/wepie/snake/module/home/skin/SkinView;)Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->adapter:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wepie/snake/module/home/skin/SkinView;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/skin/SkinView;
    .param p1, "x1"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/skin/SkinView;->isSkinHaveBuy(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/wepie/snake/module/home/skin/SkinView;Lcom/wepie/snake/helper/config/SkinConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/skin/SkinView;
    .param p1, "x1"    # Lcom/wepie/snake/helper/config/SkinConfig;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/skin/SkinView;->check2BuySkin(Lcom/wepie/snake/helper/config/SkinConfig;)V

    return-void
.end method

.method static synthetic access$500(Lcom/wepie/snake/module/home/skin/SkinView;Lcom/wepie/snake/helper/config/SkinConfig;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/skin/SkinView;
    .param p1, "x1"    # Lcom/wepie/snake/helper/config/SkinConfig;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/skin/SkinView;->doBuySkin(Lcom/wepie/snake/helper/config/SkinConfig;)V

    return-void
.end method

.method static synthetic access$600(Lcom/wepie/snake/module/home/skin/SkinView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wepie/snake/module/home/skin/SkinView;->updateUserInfo()V

    return-void
.end method

.method static synthetic access$700(Lcom/wepie/snake/module/home/skin/SkinView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/skin/SkinView;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/wepie/snake/module/home/skin/SkinView;->refreshCoin()V

    return-void
.end method

.method private check2BuySkin(Lcom/wepie/snake/helper/config/SkinConfig;)V
    .locals 2
    .param p1, "skinConfig"    # Lcom/wepie/snake/helper/config/SkinConfig;

    .prologue
    .line 158
    iget v0, p1, Lcom/wepie/snake/helper/config/SkinConfig;->cost:I

    .line 159
    .local v0, "coin":I
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginUser()Lcom/wepie/snake/module/login/UserInfo;

    move-result-object v1

    iget v1, v1, Lcom/wepie/snake/module/login/UserInfo;->coin:I

    if-lt v0, v1, :cond_0

    .line 160
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/skin/SkinView;->showBuyDialog(Lcom/wepie/snake/helper/config/SkinConfig;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/wepie/snake/module/home/skin/SkinView;->showCoinNotEnoughDialog()V

    goto :goto_0
.end method

.method private doBuySkin(Lcom/wepie/snake/helper/config/SkinConfig;)V
    .locals 2
    .param p1, "skinConfig"    # Lcom/wepie/snake/helper/config/SkinConfig;

    .prologue
    .line 195
    invoke-static {}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getInstance()Lcom/wepie/snake/module/home/skin/UserSkinManager;

    move-result-object v0

    new-instance v1, Lcom/wepie/snake/module/home/skin/SkinView$6;

    invoke-direct {v1, p0, p1}, Lcom/wepie/snake/module/home/skin/SkinView$6;-><init>(Lcom/wepie/snake/module/home/skin/SkinView;Lcom/wepie/snake/helper/config/SkinConfig;)V

    invoke-virtual {v0, p1, v1}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->buySkin(Lcom/wepie/snake/helper/config/SkinConfig;Lcom/wepie/snake/module/net/handler/CommonHandler$CommonCallback;)V

    .line 211
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040044

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 58
    const v0, 0x7f0d011f

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/skin/SkinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->gridView:Landroid/widget/GridView;

    .line 59
    const v0, 0x7f0d011e

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/skin/SkinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->backBt:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0d011c

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/skin/SkinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->shareBt:Landroid/widget/ImageView;

    .line 61
    const v0, 0x7f0d011b

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/skin/SkinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->coinTx:Landroid/widget/TextView;

    .line 63
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->backBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/wepie/snake/module/home/skin/SkinView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/skin/SkinView$1;-><init>(Lcom/wepie/snake/module/home/skin/SkinView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->shareBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/wepie/snake/module/home/skin/SkinView$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/skin/SkinView$2;-><init>(Lcom/wepie/snake/module/home/skin/SkinView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    invoke-direct {p0}, Lcom/wepie/snake/module/home/skin/SkinView;->refreshCoin()V

    .line 78
    invoke-direct {p0}, Lcom/wepie/snake/module/home/skin/SkinView;->initList()V

    .line 79
    return-void
.end method

.method private initList()V
    .locals 2

    .prologue
    .line 86
    new-instance v0, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;-><init>(Lcom/wepie/snake/module/home/skin/SkinView;)V

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->adapter:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    .line 87
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->gridView:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/skin/SkinView;->adapter:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 89
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mAllSkins:Ljava/util/ArrayList;

    invoke-static {}, Lcom/wepie/snake/helper/config/ConfigManager;->getInstance()Lcom/wepie/snake/helper/config/ConfigManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wepie/snake/helper/config/ConfigManager;->getAllSkins()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 90
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mUserSkins:Ljava/util/ArrayList;

    invoke-static {}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getInstance()Lcom/wepie/snake/module/home/skin/UserSkinManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getUserSkinInfos()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 91
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->adapter:Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/skin/SkinView$SkinAdapter;->notifyDataSetChanged()V

    .line 93
    invoke-static {}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getInstance()Lcom/wepie/snake/module/home/skin/UserSkinManager;

    move-result-object v0

    new-instance v1, Lcom/wepie/snake/module/home/skin/SkinView$3;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/skin/SkinView$3;-><init>(Lcom/wepie/snake/module/home/skin/SkinView;)V

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/home/skin/UserSkinManager;->getServerSkin(Lcom/wepie/snake/module/home/skin/UserSkinManager$UserSkinCallback;)V

    .line 106
    return-void
.end method

.method private isSkinHaveBuy(I)Z
    .locals 3
    .param p1, "skin_id"    # I

    .prologue
    .line 233
    iget-object v1, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mUserSkins:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/helper/config/SkinConfig;

    .line 234
    .local v0, "skinConfig":Lcom/wepie/snake/helper/config/SkinConfig;
    iget v2, v0, Lcom/wepie/snake/helper/config/SkinConfig;->skin_id:I

    if-ne v2, p1, :cond_0

    const/4 v1, 0x1

    .line 236
    .end local v0    # "skinConfig":Lcom/wepie/snake/helper/config/SkinConfig;
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private refreshCoin()V
    .locals 3

    .prologue
    .line 82
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->coinTx:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginUser()Lcom/wepie/snake/module/login/UserInfo;

    move-result-object v2

    iget v2, v2, Lcom/wepie/snake/module/login/UserInfo;->coin:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    return-void
.end method

.method private showBuyDialog(Lcom/wepie/snake/helper/config/SkinConfig;)V
    .locals 6
    .param p1, "skinConfig"    # Lcom/wepie/snake/helper/config/SkinConfig;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mContext:Landroid/content/Context;

    const-string v1, "\u597d\u7684"

    const-string v2, "\u4e0d\u4e86"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u82b1\u8d39"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/wepie/snake/helper/config/SkinConfig;->cost:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u679a\u91d1\u5e01\u8d2d\u4e70\uff1f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcom/wepie/snake/module/home/skin/SkinView$4;

    invoke-direct {v5, p0, p1}, Lcom/wepie/snake/module/home/skin/SkinView$4;-><init>(Lcom/wepie/snake/module/home/skin/SkinView;Lcom/wepie/snake/helper/config/SkinConfig;)V

    invoke-static/range {v0 .. v5}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/DialogCallback;)V

    .line 178
    return-void
.end method

.method private showCoinNotEnoughDialog()V
    .locals 6

    .prologue
    .line 181
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mContext:Landroid/content/Context;

    const-string v1, "\u514d\u8d39\u91d1\u5e01"

    const-string v2, "\u4e0d\u4e86"

    const-string v3, "\u91d1\u5e01\u4e0d\u8db3\uff0c\u7acb\u5373\u83b7\u53d6\r\n\u514d\u8d39\u91d1\u5e01\uff1f"

    const/4 v4, 0x0

    new-instance v5, Lcom/wepie/snake/module/home/skin/SkinView$5;

    invoke-direct {v5, p0}, Lcom/wepie/snake/module/home/skin/SkinView$5;-><init>(Lcom/wepie/snake/module/home/skin/SkinView;)V

    invoke-static/range {v0 .. v5}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/DialogCallback;)V

    .line 192
    return-void
.end method

.method private showShareView()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->shareGainCoinView:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->shareGainCoinView:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/wepie/snake/module/home/skin/SkinView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/wepie/snake/module/home/skin/SkinView;->shareGainCoinView:Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showCommonView(Landroid/content/Context;Landroid/view/View;I)V

    .line 230
    return-void
.end method

.method private updateUserInfo()V
    .locals 1

    .prologue
    .line 214
    new-instance v0, Lcom/wepie/snake/module/home/skin/SkinView$7;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/skin/SkinView$7;-><init>(Lcom/wepie/snake/module/home/skin/SkinView;)V

    invoke-static {v0}, Lcom/wepie/snake/module/net/api/UserApi;->getUserInfo(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    .line 225
    return-void
.end method
