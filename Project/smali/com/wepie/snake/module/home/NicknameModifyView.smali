.class public Lcom/wepie/snake/module/home/NicknameModifyView;
.super Landroid/widget/FrameLayout;
.source "NicknameModifyView.java"


# instance fields
.field private confirmBt:Landroid/view/View;

.field private description:Landroid/widget/TextView;

.field private headIconView:Lcom/wepie/snake/module/home/HeadIconView;

.field private nickname:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 33
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/NicknameModifyView;->init(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/NicknameModifyView;->init(Landroid/content/Context;)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/home/NicknameModifyView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/NicknameModifyView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView;->description:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wepie/snake/module/home/NicknameModifyView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/NicknameModifyView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView;->nickname:Landroid/widget/EditText;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040048

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    const v0, 0x7f0d0130

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/NicknameModifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView;->nickname:Landroid/widget/EditText;

    .line 45
    const v0, 0x7f0d012f

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/NicknameModifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/home/HeadIconView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    .line 46
    const v0, 0x7f0d0131

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/NicknameModifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView;->description:Landroid/widget/TextView;

    .line 47
    const v0, 0x7f0d0132

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/NicknameModifyView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView;->confirmBt:Landroid/view/View;

    .line 49
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView;->nickname:Landroid/widget/EditText;

    new-instance v1, Lcom/wepie/snake/module/home/NicknameModifyView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/NicknameModifyView$1;-><init>(Lcom/wepie/snake/module/home/NicknameModifyView;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView;->confirmBt:Landroid/view/View;

    new-instance v1, Lcom/wepie/snake/module/home/NicknameModifyView$2;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/NicknameModifyView$2;-><init>(Lcom/wepie/snake/module/home/NicknameModifyView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView;->nickname:Landroid/widget/EditText;

    const-string v1, "\u53d6\u4e2a\u540d\u5b57\u5427"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 100
    iget-object v0, p0, Lcom/wepie/snake/module/home/NicknameModifyView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginUser()Lcom/wepie/snake/module/login/UserInfo;

    move-result-object v1

    iget-object v1, v1, Lcom/wepie/snake/module/login/UserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/wepie/snake/module/home/HeadIconView;->update(Ljava/lang/String;)V

    .line 101
    return-void
.end method
