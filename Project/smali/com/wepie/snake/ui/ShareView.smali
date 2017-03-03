.class public Lcom/wepie/snake/ui/ShareView;
.super Landroid/widget/LinearLayout;
.source "ShareView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/wepie/snake/helper/dialog/ICloseView;


# static fields
.field public static final TYPE_NORMAL:I = 0x0

.field public static final TYPE_SCORE:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

.field private mContext:Landroid/content/Context;

.field private rootView:Landroid/widget/RelativeLayout;

.field private score:I

.field private shareType:I

.field private shareView1:Landroid/widget/LinearLayout;

.field private shareView2:Landroid/widget/LinearLayout;

.field private shareView3:Landroid/widget/LinearLayout;

.field private shareView4:Landroid/widget/LinearLayout;

.field private shareView5:Landroid/widget/LinearLayout;

.field private spaceLay:Landroid/widget/RelativeLayout;

.field private userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 27
    const-class v0, Lcom/wepie/snake/ui/ShareView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/ui/ShareView;->TAG:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/wepie/snake/ui/ShareView;->shareType:I

    .line 33
    iput v1, p0, Lcom/wepie/snake/ui/ShareView;->score:I

    .line 38
    iput-object p1, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    .line 39
    iput p2, p0, Lcom/wepie/snake/ui/ShareView;->shareType:I

    .line 40
    invoke-direct {p0}, Lcom/wepie/snake/ui/ShareView;->init()V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const-class v0, Lcom/wepie/snake/ui/ShareView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wepie/snake/ui/ShareView;->TAG:Ljava/lang/String;

    .line 32
    iput v1, p0, Lcom/wepie/snake/ui/ShareView;->shareType:I

    .line 33
    iput v1, p0, Lcom/wepie/snake/ui/ShareView;->score:I

    .line 45
    iput-object p1, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    .line 46
    invoke-direct {p0}, Lcom/wepie/snake/ui/ShareView;->init()V

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/ui/ShareView;)Lcom/wepie/snake/helper/dialog/CloseListener;
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/ui/ShareView;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    return-object v0
.end method

.method private doShareNormal(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 94
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView1:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 95
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/wepie/snake/ui/ShareView;->userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-static {v0, v4, v1}, Lcom/wepie/snake/module/plugin/ShareUtil;->share2WX(Landroid/content/Context;ZLcom/wepie/snake/module/net/entity/UserShareInfo;)V

    .line 105
    :cond_0
    :goto_0
    return-void

    .line 96
    :cond_1
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView2:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 97
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/wepie/snake/ui/ShareView;->userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-static {v0, v3, v1}, Lcom/wepie/snake/module/plugin/ShareUtil;->share2WX(Landroid/content/Context;ZLcom/wepie/snake/module/net/entity/UserShareInfo;)V

    goto :goto_0

    .line 98
    :cond_2
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView3:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    .line 99
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/wepie/snake/ui/ShareView;->userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-static {v0, v4, v2, v1}, Lcom/wepie/snake/module/plugin/ShareUtil;->shareToQQ(Landroid/app/Activity;ZILcom/wepie/snake/module/net/entity/UserShareInfo;)V

    goto :goto_0

    .line 100
    :cond_3
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView4:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_4

    .line 101
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/wepie/snake/ui/ShareView;->userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-static {v0, v3, v2, v1}, Lcom/wepie/snake/module/plugin/ShareUtil;->shareToQQ(Landroid/app/Activity;ZILcom/wepie/snake/module/net/entity/UserShareInfo;)V

    goto :goto_0

    .line 102
    :cond_4
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView5:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 103
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lcom/wepie/snake/ui/ShareView;->userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-static {v0, v1}, Lcom/wepie/snake/module/plugin/ShareUtil;->shareToWebo(Landroid/app/Activity;Lcom/wepie/snake/module/net/entity/UserShareInfo;)V

    goto :goto_0
.end method

.method private doShareScore(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 108
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView1:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_1

    .line 109
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/wepie/snake/ui/ShareView;->score:I

    iget-object v2, p0, Lcom/wepie/snake/ui/ShareView;->userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-static {v0, v3, v1, v2}, Lcom/wepie/snake/module/plugin/ShareUtil;->shareScore2WX(Landroid/content/Context;ZILcom/wepie/snake/module/net/entity/UserShareInfo;)V

    .line 119
    :cond_0
    :goto_0
    return-void

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView2:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_2

    .line 111
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    iget v2, p0, Lcom/wepie/snake/ui/ShareView;->score:I

    iget-object v3, p0, Lcom/wepie/snake/ui/ShareView;->userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-static {v0, v1, v2, v3}, Lcom/wepie/snake/module/plugin/ShareUtil;->shareScore2WX(Landroid/content/Context;ZILcom/wepie/snake/module/net/entity/UserShareInfo;)V

    goto :goto_0

    .line 112
    :cond_2
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView3:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_3

    .line 113
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/wepie/snake/ui/ShareView;->score:I

    iget-object v2, p0, Lcom/wepie/snake/ui/ShareView;->userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-static {v0, v3, v1, v2}, Lcom/wepie/snake/module/plugin/ShareUtil;->shareToQQ(Landroid/app/Activity;ZILcom/wepie/snake/module/net/entity/UserShareInfo;)V

    goto :goto_0

    .line 114
    :cond_3
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView4:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_4

    .line 115
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/wepie/snake/ui/ShareView;->score:I

    iget-object v2, p0, Lcom/wepie/snake/ui/ShareView;->userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-static {v0, v3, v1, v2}, Lcom/wepie/snake/module/plugin/ShareUtil;->shareToQQ(Landroid/app/Activity;ZILcom/wepie/snake/module/net/entity/UserShareInfo;)V

    goto :goto_0

    .line 116
    :cond_4
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView5:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget v1, p0, Lcom/wepie/snake/ui/ShareView;->score:I

    iget-object v2, p0, Lcom/wepie/snake/ui/ShareView;->userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    invoke-static {v0, v1, v2}, Lcom/wepie/snake/module/plugin/ShareUtil;->shareScoreToWeibo(Landroid/app/Activity;ILcom/wepie/snake/module/net/entity/UserShareInfo;)V

    goto :goto_0
.end method

.method private init()V
    .locals 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040042

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 51
    const v0, 0x7f0d010b

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView1:Landroid/widget/LinearLayout;

    .line 52
    const v0, 0x7f0d010c

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView2:Landroid/widget/LinearLayout;

    .line 53
    const v0, 0x7f0d010d

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView3:Landroid/widget/LinearLayout;

    .line 54
    const v0, 0x7f0d010e

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView4:Landroid/widget/LinearLayout;

    .line 55
    const v0, 0x7f0d010f

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView5:Landroid/widget/LinearLayout;

    .line 56
    const v0, 0x7f0d0109

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/ShareView;->rootView:Landroid/widget/RelativeLayout;

    .line 57
    const v0, 0x7f0d0110

    invoke-virtual {p0, v0}, Lcom/wepie/snake/ui/ShareView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/wepie/snake/ui/ShareView;->spaceLay:Landroid/widget/RelativeLayout;

    .line 59
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView1:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView2:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView3:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView4:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 63
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->shareView5:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->rootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->spaceLay:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/wepie/snake/ui/ShareView$1;

    invoke-direct {v1, p0}, Lcom/wepie/snake/ui/ShareView$1;-><init>(Lcom/wepie/snake/ui/ShareView;)V

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 85
    iget v0, p0, Lcom/wepie/snake/ui/ShareView;->shareType:I

    if-eqz v0, :cond_1

    .line 86
    invoke-direct {p0, p1}, Lcom/wepie/snake/ui/ShareView;->doShareScore(Landroid/view/View;)V

    .line 90
    :goto_0
    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wepie/snake/ui/ShareView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    invoke-interface {v0}, Lcom/wepie/snake/helper/dialog/CloseListener;->onClose()V

    .line 91
    :cond_0
    return-void

    .line 88
    :cond_1
    invoke-direct {p0, p1}, Lcom/wepie/snake/ui/ShareView;->doShareNormal(Landroid/view/View;)V

    goto :goto_0
.end method

.method public registerOnCloseListener(Lcom/wepie/snake/helper/dialog/CloseListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/wepie/snake/helper/dialog/CloseListener;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/wepie/snake/ui/ShareView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    .line 125
    return-void
.end method

.method public setScore(I)V
    .locals 0
    .param p1, "score"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/wepie/snake/ui/ShareView;->score:I

    .line 77
    return-void
.end method

.method public setUserShareInfo(Lcom/wepie/snake/module/net/entity/UserShareInfo;)V
    .locals 0
    .param p1, "userShareInfo"    # Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/wepie/snake/ui/ShareView;->userShareInfo:Lcom/wepie/snake/module/net/entity/UserShareInfo;

    .line 81
    return-void
.end method
