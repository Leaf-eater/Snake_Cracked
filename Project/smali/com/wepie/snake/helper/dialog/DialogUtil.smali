.class public Lcom/wepie/snake/helper/dialog/DialogUtil;
.super Ljava/lang/Object;
.source "DialogUtil.java"


# static fields
.field private static isShow:Z

.field private static mView:Landroid/view/View;

.field private static manager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 106
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wepie/snake/helper/dialog/DialogUtil;->isShow:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hideView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 131
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wepie/snake/helper/dialog/DialogUtil;->isShow:Z

    .line 132
    sget-object v0, Lcom/wepie/snake/helper/dialog/DialogUtil;->mView:Landroid/view/View;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/wepie/snake/helper/dialog/DialogUtil;->manager:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 133
    sget-object v0, Lcom/wepie/snake/helper/dialog/DialogUtil;->manager:Landroid/view/WindowManager;

    sget-object v1, Lcom/wepie/snake/helper/dialog/DialogUtil;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 135
    :cond_0
    sput-object v2, Lcom/wepie/snake/helper/dialog/DialogUtil;->mView:Landroid/view/View;

    .line 136
    sput-object v2, Lcom/wepie/snake/helper/dialog/DialogUtil;->manager:Landroid/view/WindowManager;

    .line 137
    return-void
.end method

.method public static showCommonView(Landroid/content/Context;Landroid/view/View;I)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;
    .param p2, "anim_type"    # I

    .prologue
    .line 85
    new-instance v0, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    const v2, 0x7f0a0140

    invoke-direct {v0, p0, v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 86
    .local v0, "dialog":Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
    new-instance v1, Lcom/wepie/snake/helper/dialog/DialogMainView;

    invoke-direct {v1, p0}, Lcom/wepie/snake/helper/dialog/DialogMainView;-><init>(Landroid/content/Context;)V

    .line 87
    .local v1, "dialogMainView":Lcom/wepie/snake/helper/dialog/DialogMainView;
    invoke-virtual {v1, p1, p2}, Lcom/wepie/snake/helper/dialog/DialogMainView;->addViewWithAnim(Landroid/view/View;I)V

    .line 89
    invoke-virtual {v0, v1}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 90
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 91
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->init(F)V

    .line 92
    invoke-virtual {v0}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->show()V

    .line 94
    instance-of v2, p1, Lcom/wepie/snake/helper/dialog/ICloseView;

    if-eqz v2, :cond_0

    .line 95
    check-cast p1, Lcom/wepie/snake/helper/dialog/ICloseView;

    .end local p1    # "view":Landroid/view/View;
    new-instance v2, Lcom/wepie/snake/helper/dialog/DialogUtil$4;

    invoke-direct {v2, v0}, Lcom/wepie/snake/helper/dialog/DialogUtil$4;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;)V

    invoke-interface {p1, v2}, Lcom/wepie/snake/helper/dialog/ICloseView;->registerOnCloseListener(Lcom/wepie/snake/helper/dialog/CloseListener;)V

    .line 102
    :cond_0
    return-void
.end method

.method public static showDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/wepie/snake/helper/dialog/DialogCallback;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sureTx"    # Ljava/lang/String;
    .param p2, "cancelTx"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .param p4, "singleTx"    # Ljava/lang/String;
    .param p5, "callback"    # Lcom/wepie/snake/helper/dialog/DialogCallback;

    .prologue
    const/4 v9, 0x4

    .line 23
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04001f

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 24
    .local v5, "view":Landroid/view/View;
    new-instance v2, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;

    const v6, 0x7f0a0143

    invoke-direct {v2, p0, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;-><init>(Landroid/content/Context;I)V

    .line 25
    .local v2, "dialog":Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;
    invoke-virtual {v2, v5}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setContentView(Landroid/view/View;)V

    .line 26
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->setCanceledOnTouchOutside(Z)V

    .line 27
    invoke-virtual {v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->initY()V

    .line 29
    const v6, 0x7f0d006a

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 30
    .local v1, "contentTX":Landroid/widget/TextView;
    const v6, 0x7f0d006b

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 31
    .local v4, "sureBt":Landroid/widget/TextView;
    const v6, 0x7f0d006c

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 32
    .local v0, "cancelBt":Landroid/widget/TextView;
    const v6, 0x7f0d006d

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 34
    .local v3, "singleBt":Landroid/widget/TextView;
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 35
    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    invoke-virtual {v4, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    :goto_0
    new-instance v6, Lcom/wepie/snake/helper/dialog/DialogUtil$1;

    invoke-direct {v6, v2, p5}, Lcom/wepie/snake/helper/dialog/DialogUtil$1;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/DialogCallback;)V

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    new-instance v6, Lcom/wepie/snake/helper/dialog/DialogUtil$2;

    invoke-direct {v6, v2, p5}, Lcom/wepie/snake/helper/dialog/DialogUtil$2;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/DialogCallback;)V

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    new-instance v6, Lcom/wepie/snake/helper/dialog/DialogUtil$3;

    invoke-direct {v6, v2, p5}, Lcom/wepie/snake/helper/dialog/DialogUtil$3;-><init>(Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;Lcom/wepie/snake/helper/dialog/DialogCallback;)V

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    invoke-virtual {v2}, Lcom/wepie/snake/helper/dialog/BaseFullScreenDialog;->show()V

    .line 81
    return-void

    .line 41
    :cond_0
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 42
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 45
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    invoke-virtual {v3, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static showView(Landroid/content/Context;Landroid/view/View;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, -0x1

    const/4 v2, 0x1

    .line 110
    sput-boolean v2, Lcom/wepie/snake/helper/dialog/DialogUtil;->isShow:Z

    .line 111
    sput-object p1, Lcom/wepie/snake/helper/dialog/DialogUtil;->mView:Landroid/view/View;

    .line 112
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 113
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 114
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/16 v3, 0x3ea

    const/high16 v4, 0x20000

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 120
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    or-int/lit16 v1, v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 122
    const-string v1, "window"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    sput-object v1, Lcom/wepie/snake/helper/dialog/DialogUtil;->manager:Landroid/view/WindowManager;

    .line 123
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    .line 124
    .local v6, "viewParent":Landroid/view/ViewParent;
    if-eqz v6, :cond_0

    .line 125
    check-cast v6, Landroid/view/ViewGroup;

    .end local v6    # "viewParent":Landroid/view/ViewParent;
    invoke-virtual {v6, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    :cond_0
    sget-object v1, Lcom/wepie/snake/helper/dialog/DialogUtil;->manager:Landroid/view/WindowManager;

    invoke-interface {v1, p1, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    return-void
.end method
