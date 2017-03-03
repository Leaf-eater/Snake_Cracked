.class public Lcom/wepie/snake/module/home/HomeView;
.super Landroid/widget/FrameLayout;
.source "HomeView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static firstShow:Z


# instance fields
.field private headIconView:Lcom/wepie/snake/module/home/HeadIconView;

.field private needFirstShow:Z

.field private userName:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wepie/snake/module/home/HomeView;->firstShow:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/module/home/HomeView;->needFirstShow:Z

    .line 39
    invoke-direct {p0}, Lcom/wepie/snake/module/home/HomeView;->init()V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/module/home/HomeView;->needFirstShow:Z

    .line 44
    invoke-direct {p0}, Lcom/wepie/snake/module/home/HomeView;->init()V

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/wepie/snake/module/home/HomeView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wepie/snake/module/home/HomeView;

    .prologue
    .line 30
    iget-boolean v0, p0, Lcom/wepie/snake/module/home/HomeView;->needFirstShow:Z

    return v0
.end method

.method private doFirstShow()V
    .locals 4

    .prologue
    .line 68
    sget-boolean v0, Lcom/wepie/snake/module/home/HomeView;->firstShow:Z

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/wepie/snake/module/home/HomeView$1;

    invoke-direct {v0, p0}, Lcom/wepie/snake/module/home/HomeView$1;-><init>(Lcom/wepie/snake/module/home/HomeView;)V

    const-wide/16 v2, 0x5dc

    invoke-virtual {p0, v0, v2, v3}, Lcom/wepie/snake/module/home/HomeView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 94
    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/wepie/snake/module/home/HomeView;->firstShow:Z

    .line 95
    return-void
.end method

.method public static firstShow()V
    .locals 1

    .prologue
    .line 136
    const/4 v0, 0x1

    sput-boolean v0, Lcom/wepie/snake/module/home/HomeView;->firstShow:Z

    .line 137
    return-void
.end method

.method private init()V
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04002b

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 50
    const v0, 0x7f0d00b6

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/wepie/snake/module/home/HeadIconView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/HomeView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    .line 51
    const v0, 0x7f0d00b7

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/wepie/snake/module/home/HomeView;->userName:Landroid/widget/TextView;

    .line 52
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->doRefresh()V

    .line 54
    const v0, 0x7f0d00b5

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    const v0, 0x7f0d00b8

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    const v0, 0x7f0d00ba

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 57
    const v0, 0x7f0d00b9

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    const v0, 0x7f0d00c0

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    const v0, 0x7f0d00bf

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    const v0, 0x7f0d00bc

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    const v0, 0x7f0d00bd

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    const v0, 0x7f0d00be

    invoke-virtual {p0, v0}, Lcom/wepie/snake/module/home/HomeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-direct {p0}, Lcom/wepie/snake/module/home/HomeView;->doFirstShow()V

    .line 65
    return-void
.end method


# virtual methods
.method public doRefresh()V
    .locals 3

    .prologue
    .line 130
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->getLoginUser()Lcom/wepie/snake/module/login/UserInfo;

    move-result-object v0

    .line 131
    .local v0, "userInfo":Lcom/wepie/snake/module/login/UserInfo;
    iget-object v1, p0, Lcom/wepie/snake/module/home/HomeView;->userName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/wepie/snake/module/login/UserInfo;->nickname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/wepie/snake/module/home/HomeView;->headIconView:Lcom/wepie/snake/module/home/HeadIconView;

    iget-object v2, v0, Lcom/wepie/snake/module/login/UserInfo;->avatar:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/wepie/snake/module/home/HeadIconView;->update(Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 141
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/wepie/snake/module/home/HomeView;->needFirstShow:Z

    .line 142
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 99
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 101
    .local v1, "id":I
    const v4, 0x7f0d00b8

    if-ne v1, v4, :cond_1

    .line 102
    new-instance v3, Lcom/wepie/snake/module/home/share/ShareGainCoinView;

    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/wepie/snake/module/home/share/ShareGainCoinView;-><init>(Landroid/content/Context;)V

    .line 103
    .local v3, "shareGainCoinView":Lcom/wepie/snake/module/home/share/ShareGainCoinView;
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3, v5}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showCommonView(Landroid/content/Context;Landroid/view/View;I)V

    .line 127
    .end local v3    # "shareGainCoinView":Lcom/wepie/snake/module/home/share/ShareGainCoinView;
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    const v4, 0x7f0d00ba

    if-ne v1, v4, :cond_2

    .line 105
    new-instance v2, Lcom/wepie/snake/module/home/setting/SettingsView;

    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Lcom/wepie/snake/module/home/setting/SettingsView;-><init>(Landroid/content/Context;)V

    .line 106
    .local v2, "settingsView":Lcom/wepie/snake/module/home/setting/SettingsView;
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2, v5}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showCommonView(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    .line 107
    .end local v2    # "settingsView":Lcom/wepie/snake/module/home/setting/SettingsView;
    :cond_2
    const v4, 0x7f0d00b9

    if-ne v1, v4, :cond_3

    .line 108
    new-instance v0, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;

    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;-><init>(Landroid/content/Context;)V

    .line 109
    .local v0, "activityPlanningView":Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v0, v5}, Lcom/wepie/snake/helper/dialog/DialogUtil;->showCommonView(Landroid/content/Context;Landroid/view/View;I)V

    goto :goto_0

    .line 110
    .end local v0    # "activityPlanningView":Lcom/wepie/snake/module/home/activityplanning/ActivityPlanningView;
    :cond_3
    const v4, 0x7f0d00c0

    if-ne v1, v4, :cond_4

    .line 111
    const/4 v4, 0x2

    invoke-static {v4}, Lcom/wepie/snake/module/game/GameTypeUtil;->setGameType(I)V

    .line 112
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v4

    const-string v5, "name"

    iget-object v6, p0, Lcom/wepie/snake/module/home/HomeView;->userName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/wepie/snake/activity/GameActivity;->gotoActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 114
    :cond_4
    const v4, 0x7f0d00bf

    if-ne v1, v4, :cond_5

    .line 115
    invoke-static {v5}, Lcom/wepie/snake/module/game/GameTypeUtil;->setGameType(I)V

    .line 116
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v4

    const-string v5, "name"

    iget-object v6, p0, Lcom/wepie/snake/module/home/HomeView;->userName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->setString(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/wepie/snake/activity/GameActivity;->gotoActivity(Landroid/content/Context;)V

    goto :goto_0

    .line 118
    :cond_5
    const v4, 0x7f0d00bc

    if-ne v1, v4, :cond_6

    .line 119
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v4}, Lcom/wepie/snake/activity/HomeActivity;->showRuleView()V

    goto/16 :goto_0

    .line 120
    :cond_6
    const v4, 0x7f0d00bd

    if-ne v1, v4, :cond_7

    .line 121
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v4}, Lcom/wepie/snake/activity/HomeActivity;->showRankView()V

    goto/16 :goto_0

    .line 122
    :cond_7
    const v4, 0x7f0d00be

    if-ne v1, v4, :cond_8

    .line 123
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v4}, Lcom/wepie/snake/activity/HomeActivity;->showSkinView()V

    goto/16 :goto_0

    .line 124
    :cond_8
    const v4, 0x7f0d00b5

    if-ne v1, v4, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/wepie/snake/module/home/HomeView;->getContext()Landroid/content/Context;

    move-result-object v4

    check-cast v4, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v4}, Lcom/wepie/snake/activity/HomeActivity;->showUserInfoView()V

    goto/16 :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 146
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wepie/snake/module/home/HomeView;->needFirstShow:Z

    .line 147
    return-void
.end method
