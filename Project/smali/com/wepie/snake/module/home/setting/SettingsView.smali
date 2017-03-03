.class public Lcom/wepie/snake/module/home/setting/SettingsView;
.super Landroid/widget/LinearLayout;
.source "SettingsView.java"

# interfaces
.implements Lcom/wepie/snake/helper/dialog/ICloseView;


# instance fields
.field private closeBt:Landroid/widget/ImageView;

.field listener:Landroid/view/View$OnClickListener;

.field private loginStatusTx:Landroid/widget/TextView;

.field private logoutBt:Landroid/widget/TextView;

.field mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

.field private mContext:Landroid/content/Context;

.field private musicBgBt:Landroid/widget/ImageView;

.field private musicGameBt:Landroid/widget/ImageView;

.field private operateLeftBt:Landroid/widget/ImageView;

.field private operateRightBt:Landroid/widget/ImageView;

.field private operateShowImage:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 95
    new-instance v0, Lcom/wepie/snake/module/home/setting/SettingsView$1;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/setting/SettingsView$1;-><init>(Lcom/wepie/snake/module/home/setting/SettingsView;)V

    iput-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->listener:Landroid/view/View$OnClickListener;

    .line 39
    iput-object p1, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->mContext:Landroid/content/Context;

    .line 40
    invoke-direct {p0}, Lcom/wepie/snake/module/home/setting/SettingsView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 95
    new-instance v0, Lcom/wepie/snake/module/home/setting/SettingsView$1;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/setting/SettingsView$1;-><init>(Lcom/wepie/snake/module/home/setting/SettingsView;)V

    iput-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->listener:Landroid/view/View$OnClickListener;

    .line 45
    iput-object p1, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/wepie/snake/module/home/setting/SettingsView;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/setting/SettingsView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->closeBt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/setting/SettingsView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->musicBgBt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/setting/SettingsView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->musicGameBt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/setting/SettingsView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->operateLeftBt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/setting/SettingsView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->operateRightBt:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/setting/SettingsView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->operateShowImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$600(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/setting/SettingsView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->logoutBt:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/wepie/snake/module/home/setting/SettingsView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/setting/SettingsView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/wepie/snake/module/home/setting/SettingsView;->doLogout()V

    return-void
.end method

.method static synthetic access$800(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/setting/SettingsView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private doLogout()V
    .locals 4

    .prologue
    .line 135
    new-instance v0, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;

    invoke-direct {v0}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;-><init>()V

    .line 136
    .local v0, "progressDialogUtil":Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/setting/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;->showLoading(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 137
    new-instance v1, Lcom/wepie/snake/module/home/setting/SettingsView$2;

    invoke-direct {v1, p0, v0}, Lcom/wepie/snake/module/home/setting/SettingsView$2;-><init>(Lcom/wepie/snake/module/home/setting/SettingsView;Lcom/wepie/snake/helper/progressdialog/ProgressDialogUtil;)V

    invoke-static {v1}, Lcom/wepie/snake/module/net/api/LoginApi;->doLogout(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    .line 153
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040029

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    const v0, 0x7f0d00a2

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/setting/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->musicBgBt:Landroid/widget/ImageView;

    .line 52
    const v0, 0x7f0d00a4

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/setting/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->musicGameBt:Landroid/widget/ImageView;

    .line 53
    const v0, 0x7f0d00ab

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/setting/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->operateLeftBt:Landroid/widget/ImageView;

    .line 54
    const v0, 0x7f0d00ad

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/setting/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->operateRightBt:Landroid/widget/ImageView;

    .line 55
    const v0, 0x7f0d00ae

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/setting/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->operateShowImage:Landroid/widget/ImageView;

    .line 56
    const v0, 0x7f0d00a7

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/setting/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->loginStatusTx:Landroid/widget/TextView;

    .line 57
    const v0, 0x7f0d00a8

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/setting/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->logoutBt:Landroid/widget/TextView;

    .line 58
    const v0, 0x7f0d00af

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/setting/SettingsView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->closeBt:Landroid/widget/ImageView;

    .line 60
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->musicBgBt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->musicGameBt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->operateLeftBt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->operateRightBt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->logoutBt:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->closeBt:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    invoke-direct {p0}, Lcom/wepie/snake/module/home/setting/SettingsView;->refresh()V

    .line 68
    return-void
.end method

.method private refresh()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const v6, 0x7f020132

    const v5, 0x7f02005e

    .line 71
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v4

    const-string v7, "game_bg_voc"

    invoke-virtual {v4, v7, v8}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 72
    .local v0, "isBgMusicOn":Z
    iget-object v7, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->musicBgBt:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    move v4, v5

    :goto_0
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 74
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v4

    const-string v7, "game_voc"

    invoke-virtual {v4, v7, v8}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 75
    .local v1, "isGameMusicOn":Z
    iget-object v7, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->musicGameBt:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    move v4, v5

    :goto_1
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 77
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v4

    const-string v7, "is_operate_left"

    invoke-virtual {v4, v7, v8}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 78
    .local v2, "isOperateLeft":Z
    iget-object v7, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->operateLeftBt:Landroid/widget/ImageView;

    if-eqz v2, :cond_2

    move v4, v5

    :goto_2
    invoke-virtual {v7, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 79
    iget-object v4, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->operateRightBt:Landroid/widget/ImageView;

    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 80
    iget-object v5, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->operateShowImage:Landroid/widget/ImageView;

    if-eqz v2, :cond_4

    const v4, 0x7f0200ba

    :goto_4
    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 84
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->isVisitor()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 85
    const-string v3, "\u6e38\u5ba2\u72b6\u6001"

    .line 90
    .local v3, "loginStatusString":Ljava/lang/String;
    :goto_5
    iget-object v4, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->loginStatusTx:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v5, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->logoutBt:Landroid/widget/TextView;

    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->isVisitor()Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "\u8bf7\u767b\u5f55"

    :goto_6
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    return-void

    .end local v1    # "isGameMusicOn":Z
    .end local v2    # "isOperateLeft":Z
    .end local v3    # "loginStatusString":Ljava/lang/String;
    :cond_0
    move v4, v6

    .line 72
    goto :goto_0

    .restart local v1    # "isGameMusicOn":Z
    :cond_1
    move v4, v6

    .line 75
    goto :goto_1

    .restart local v2    # "isOperateLeft":Z
    :cond_2
    move v4, v6

    .line 78
    goto :goto_2

    :cond_3
    move v6, v5

    .line 79
    goto :goto_3

    .line 80
    :cond_4
    const v4, 0x7f0200bc

    goto :goto_4

    .line 87
    :cond_5
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->isQQUser()Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v3, "\u5df2\u767b\u5f55QQ"

    .restart local v3    # "loginStatusString":Ljava/lang/String;
    :goto_7
    goto :goto_5

    .end local v3    # "loginStatusString":Ljava/lang/String;
    :cond_6
    const-string v3, "\u5df2\u767b\u5f55\u5fae\u4fe1"

    goto :goto_7

    .line 91
    .restart local v3    # "loginStatusString":Ljava/lang/String;
    :cond_7
    const-string v4, "\u9000\u51fa\u767b\u5f55"

    goto :goto_6
.end method


# virtual methods
.method public registerOnCloseListener(Lcom/wepie/snake/helper/dialog/CloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/wepie/snake/helper/dialog/CloseListener;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/wepie/snake/module/home/setting/SettingsView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    .line 160
    return-void
.end method
