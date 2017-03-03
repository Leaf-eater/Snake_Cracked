.class public Lcom/wepie/snake/module/home/user/UserInfoView;
.super Landroid/widget/LinearLayout;
.source "UserInfoView.java"


# instance fields
.field private backBt:Landroid/widget/ImageView;

.field private loginInfoView:Lcom/wepie/snake/module/home/user/LoginInfoView;

.field private mContext:Landroid/content/Context;

.field private visitorInfoView:Lcom/wepie/snake/module/home/user/VisitorInfoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 25
    iput-object p1, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {p0}, Lcom/wepie/snake/module/home/user/UserInfoView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    iput-object p1, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/wepie/snake/module/home/user/UserInfoView;->init()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/home/user/UserInfoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/user/UserInfoView;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    const v0, 0x7f0d00b4

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/UserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->backBt:Landroid/widget/ImageView;

    .line 38
    const v0, 0x7f0d00b2

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/UserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/home/user/VisitorInfoView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->visitorInfoView:Lcom/wepie/snake/module/home/user/VisitorInfoView;

    .line 39
    const v0, 0x7f0d00b3

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/UserInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/home/user/LoginInfoView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->loginInfoView:Lcom/wepie/snake/module/home/user/LoginInfoView;

    .line 41
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->backBt:Landroid/widget/ImageView;

    new-instance v1, Lcom/wepie/snake/module/home/user/UserInfoView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/user/UserInfoView$1;-><init>(Lcom/wepie/snake/module/home/user/UserInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/user/UserInfoView;->doRefresh()V

    .line 49
    return-void
.end method

.method private showLoginInfoView()V
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->visitorInfoView:Lcom/wepie/snake/module/home/user/VisitorInfoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/home/user/VisitorInfoView;->setVisibility(I)V

    .line 67
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->loginInfoView:Lcom/wepie/snake/module/home/user/LoginInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/home/user/LoginInfoView;->setVisibility(I)V

    .line 68
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->loginInfoView:Lcom/wepie/snake/module/home/user/LoginInfoView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/user/LoginInfoView;->refresh()V

    .line 69
    return-void
.end method

.method private showVisitorView()V
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->visitorInfoView:Lcom/wepie/snake/module/home/user/VisitorInfoView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/home/user/VisitorInfoView;->setVisibility(I)V

    .line 61
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->loginInfoView:Lcom/wepie/snake/module/home/user/LoginInfoView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/home/user/LoginInfoView;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/UserInfoView;->visitorInfoView:Lcom/wepie/snake/module/home/user/VisitorInfoView;

    invoke-virtual {v0}, Lcom/wepie/snake/module/home/user/VisitorInfoView;->refresh()V

    .line 63
    return-void
.end method


# virtual methods
.method public doRefresh()V
    .locals 1

    .prologue
    .line 52
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->isVisitor()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/wepie/snake/module/home/user/UserInfoView;->showVisitorView()V

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    invoke-direct {p0}, Lcom/wepie/snake/module/home/user/UserInfoView;->showLoginInfoView()V

    goto :goto_0
.end method
