.class public Lcom/wepie/snake/module/home/user/VisitorInfoView;
.super Landroid/widget/LinearLayout;
.source "VisitorInfoView.java"


# instance fields
.field private headIconView:Lcom/wepie/snake/module/home/HeadIconView;

.field private mContext:Landroid/content/Context;

.field private nickTx:Landroid/widget/TextView;

.field noteString:Ljava/lang/String;

.field private qqLoginBt:Landroid/widget/LinearLayout;

.field private visitorNoteTx:Landroid/widget/TextView;

.field private wxLoginBt:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-string v0, "\u6e38\u5ba2\u5e10\u53f7<font color=\"#ff5758\">\u4e0d\u5b89\u5168</font>\uff0c\u8bf7\u5728\u53f3\u4fa7\u9009\u62e9\u5408\u4f5c\u5e10\u53f7\u767b\u5f55\uff0cQQ\uff0f\u5fae\u4fe1\u9996\u6b21\u6210\u529f\u767b\u5f55\u9001<font color=\"#ff5758\">50\u9897\u91d1\u5e01</font>"

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->noteString:Ljava/lang/String;

    .line 31
    iput-object p1, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->mContext:Landroid/content/Context;

    .line 32
    invoke-direct {p0}, Lcom/wepie/snake/module/home/user/VisitorInfoView;->init()V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-string v0, "\u6e38\u5ba2\u5e10\u53f7<font color=\"#ff5758\">\u4e0d\u5b89\u5168</font>\uff0c\u8bf7\u5728\u53f3\u4fa7\u9009\u62e9\u5408\u4f5c\u5e10\u53f7\u767b\u5f55\uff0cQQ\uff0f\u5fae\u4fe1\u9996\u6b21\u6210\u529f\u767b\u5f55\u9001<font color=\"#ff5758\">50\u9897\u91d1\u5e01</font>"

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->noteString:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->mContext:Landroid/content/Context;

    .line 38
    invoke-direct {p0}, Lcom/wepie/snake/module/home/user/VisitorInfoView;->init()V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/home/user/VisitorInfoView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/user/VisitorInfoView;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002c

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    const v0, 0x7f0d00c2

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/VisitorInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/home/HeadIconView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    .line 44
    const v0, 0x7f0d00c3

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/VisitorInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->nickTx:Landroid/widget/TextView;

    .line 45
    const v0, 0x7f0d00c5

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/VisitorInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->qqLoginBt:Landroid/widget/LinearLayout;

    .line 46
    const v0, 0x7f0d00c6

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/VisitorInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->wxLoginBt:Landroid/widget/LinearLayout;

    .line 47
    const v0, 0x7f0d00c4

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/user/VisitorInfoView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->visitorNoteTx:Landroid/widget/TextView;

    .line 49
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->qqLoginBt:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/wepie/snake/module/home/user/VisitorInfoView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/user/VisitorInfoView$1;-><init>(Lcom/wepie/snake/module/home/user/VisitorInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->wxLoginBt:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/wepie/snake/module/home/user/VisitorInfoView$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/user/VisitorInfoView$2;-><init>(Lcom/wepie/snake/module/home/user/VisitorInfoView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    new-instance v1, Lcom/wepie/snake/module/home/user/VisitorInfoView$3;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/user/VisitorInfoView$3;-><init>(Lcom/wepie/snake/module/home/user/VisitorInfoView;)V

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/home/HeadIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    iget-object v0, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->visitorNoteTx:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->noteString:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method


# virtual methods
.method public refresh()V
    .locals 3

    .prologue
    .line 74
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginUser()Lcom/wepie/snake/module/login/UserInfo;

    move-result-object v0

    .line 75
    .local v0, "userInfo":Lcom/wepie/snake/module/login/UserInfo;
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    iget-object v2, v0, Lcom/wepie/snake/module/login/UserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/home/HeadIconView;->update(Ljava/lang/String;)V

    .line 76
    iget-object v1, p0, Lcom/wepie/snake/module/home/user/VisitorInfoView;->nickTx:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/wepie/snake/module/login/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    return-void
.end method
