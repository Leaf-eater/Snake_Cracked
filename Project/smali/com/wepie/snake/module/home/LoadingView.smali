.class public Lcom/wepie/snake/module/home/LoadingView;
.super Landroid/widget/FrameLayout;
.source "LoadingView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wepie/snake/module/home/LoadingView$LoadingCallback;
    }
.end annotation


# instance fields
.field private description:Landroid/widget/TextView;

.field private errorContainer:Landroid/view/View;

.field private handler:Landroid/os/Handler;

.field private loadingCallback:Lcom/wepie/snake/module/home/LoadingView$LoadingCallback;

.field private normalContainer:Landroid/view/View;

.field private progress:Lcom/daimajia/numberprogressbar/NumberProgressBar;

.field private startLoadingTimestamp:J

.field private stopLoadingProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/module/home/LoadingView;->stopLoadingProgress:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->handler:Landroid/os/Handler;

    .line 40
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/LoadingView;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/module/home/LoadingView;->stopLoadingProgress:Z

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->handler:Landroid/os/Handler;

    .line 45
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/LoadingView;->init(Landroid/content/Context;)V

    .line 46
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/home/LoadingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/LoadingView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/wepie/snake/module/home/LoadingView;->doLoginSuccess()V

    return-void
.end method

.method static synthetic access$100(Lcom/wepie/snake/module/home/LoadingView;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/LoadingView;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/wepie/snake/module/home/LoadingView;->doLoginFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/wepie/snake/module/home/LoadingView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/LoadingView;

    .prologue
    .line 26
    iget-boolean v0, p0, Lcom/wepie/snake/module/home/LoadingView;->stopLoadingProgress:Z

    return v0
.end method

.method static synthetic access$300(Lcom/wepie/snake/module/home/LoadingView;)J
    .locals 2
    .param p0, "x0"    # Lcom/wepie/snake/module/home/LoadingView;

    .prologue
    .line 26
    iget-wide v0, p0, Lcom/wepie/snake/module/home/LoadingView;->startLoadingTimestamp:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/wepie/snake/module/home/LoadingView;)Lcom/daimajia/numberprogressbar/NumberProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/LoadingView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->progress:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    return-object v0
.end method

.method static synthetic access$500(Lcom/wepie/snake/module/home/LoadingView;)V
    .locals 0
    .param p0, "x0"    # Lcom/wepie/snake/module/home/LoadingView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/wepie/snake/module/home/LoadingView;->startLoadingProgressInner()V

    return-void
.end method

.method private doLoginFailed(Ljava/lang/String;)V
    .locals 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/LoadingView;->stopLoadingProgress()V

    .line 105
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->normalContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->errorContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 107
    return-void
.end method

.method private doLoginSuccess()V
    .locals 2

    .prologue
    .line 95
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/LoadingView;->stopLoadingProgress()V

    .line 96
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->description:Landroid/widget/TextView;

    const-string v1, "\u5b8c\u6210\u6570\u636e\u5bf9\u63a5,\u767b\u5f55\u6210\u529f"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->progress:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/daimajia/numberprogressbar/NumberProgressBar;->setProgress(I)V

    .line 99
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->loadingCallback:Lcom/wepie/snake/module/home/LoadingView$LoadingCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->loadingCallback:Lcom/wepie/snake/module/home/LoadingView$LoadingCallback;

    invoke-interface {v0}, Lcom/wepie/snake/module/home/LoadingView$LoadingCallback;->onLoaded()V

    .line 101
    :cond_0
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040047

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    const v0, 0x7f0d012b

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->normalContainer:Landroid/view/View;

    .line 52
    const v0, 0x7f0d012c

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->description:Landroid/widget/TextView;

    .line 53
    const v0, 0x7f0d0068

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/daimajia/numberprogressbar/NumberProgressBar;

    iput-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->progress:Lcom/daimajia/numberprogressbar/NumberProgressBar;

    .line 54
    const v0, 0x7f0d012d

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->errorContainer:Landroid/view/View;

    .line 55
    const v0, 0x7f0d012e

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/LoadingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method

.method private startLoadingProgressInner()V
    .locals 4

    .prologue
    .line 121
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/wepie/snake/module/home/LoadingView$3;

    invoke-direct {v1, p0}, Lcom/wepie/snake/module/home/LoadingView$3;-><init>(Lcom/wepie/snake/module/home/LoadingView;)V

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 130
    return-void
.end method


# virtual methods
.method public doRefresh(Lcom/wepie/snake/module/home/LoadingView$LoadingCallback;)V
    .locals 2
    .param p1, "callback"    # Lcom/wepie/snake/module/home/LoadingView$LoadingCallback;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/wepie/snake/module/home/LoadingView;->loadingCallback:Lcom/wepie/snake/module/home/LoadingView$LoadingCallback;

    .line 61
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->normalContainer:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->errorContainer:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 64
    iget-object v0, p0, Lcom/wepie/snake/module/home/LoadingView;->description:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u8fde\u63a5\u670d\u52a1\u5668\u2026\u2026"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/LoadingView;->startLoadingProgress()V

    .line 67
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getUid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    new-instance v0, Lcom/wepie/snake/module/home/LoadingView$1;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/LoadingView$1;-><init>(Lcom/wepie/snake/module/home/LoadingView;)V

    invoke-static {v0}, Lcom/wepie/snake/module/net/api/LoginApi;->doVisitorLogin(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    .line 92
    :goto_0
    return-void

    .line 80
    :cond_0
    new-instance v0, Lcom/wepie/snake/module/home/LoadingView$2;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/LoadingView$2;-><init>(Lcom/wepie/snake/module/home/LoadingView;)V

    invoke-static {v0}, Lcom/wepie/snake/module/net/api/UserApi;->getUserInfo(Lcom/wepie/snake/module/login/UserLoginCallback;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 138
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 144
    :goto_0
    return-void

    .line 140
    :pswitch_0
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/LoadingView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 138
    :pswitch_data_0
    .packed-switch 0x7f0d012e
        :pswitch_0
    .end packed-switch
.end method

.method public startLoadingProgress()V
    .locals 2

    .prologue
    .line 111
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/module/home/LoadingView;->stopLoadingProgress:Z

    .line 112
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/wepie/snake/module/home/LoadingView;->startLoadingTimestamp:J

    .line 113
    invoke-direct {p0}, Lcom/wepie/snake/module/home/LoadingView;->startLoadingProgressInner()V

    .line 114
    return-void
.end method

.method public stopLoadingProgress()V
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wepie/snake/module/home/LoadingView;->stopLoadingProgress:Z

    .line 118
    return-void
.end method
