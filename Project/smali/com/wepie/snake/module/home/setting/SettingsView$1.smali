.class Lcom/wepie/snake/module/home/setting/SettingsView$1;
.super Ljava/lang/Object;
.source "SettingsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wepie/snake/module/home/setting/SettingsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wepie/snake/module/home/setting/SettingsView;


# direct methods
.method constructor <init>(Lcom/wepie/snake/module/home/setting/SettingsView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/wepie/snake/module/home/setting/SettingsView;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    const v3, 0x7f020132

    const v4, 0x7f02005e

    const/4 v1, 0x1

    .line 98
    iget-object v5, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->closeBt:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$000(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v5

    if-ne p1, v5, :cond_1

    .line 99
    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    iget-object v1, v1, Lcom/wepie/snake/module/home/setting/SettingsView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    iget-object v1, v1, Lcom/wepie/snake/module/home/setting/SettingsView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    invoke-interface {v1}, Lcom/wepie/snake/helper/dialog/CloseListener;->onClose()V

    .line 131
    :cond_0
    :goto_0
    return-void

    .line 100
    :cond_1
    iget-object v5, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->musicBgBt:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$100(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v5

    if-ne p1, v5, :cond_4

    .line 101
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v5

    const-string v6, "game_bg_voc"

    invoke-virtual {v5, v6, v1}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 102
    .local v0, "lastOn":Z
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v5

    const-string v6, "game_bg_voc"

    if-nez v0, :cond_2

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 103
    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->musicBgBt:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$100(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v2

    if-eqz v0, :cond_3

    move v1, v3

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    move v1, v2

    .line 102
    goto :goto_1

    :cond_3
    move v1, v4

    .line 103
    goto :goto_2

    .line 105
    .end local v0    # "lastOn":Z
    :cond_4
    iget-object v5, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->musicGameBt:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$200(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v5

    if-ne p1, v5, :cond_7

    .line 106
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v5

    const-string v6, "game_voc"

    invoke-virtual {v5, v6, v1}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getBoolean(Ljava/lang/String;Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 107
    .restart local v0    # "lastOn":Z
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v5

    const-string v6, "game_voc"

    if-nez v0, :cond_5

    :goto_3
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v5, v6, v1}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 108
    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->musicGameBt:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$200(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v1

    if-eqz v0, :cond_6

    :goto_4
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_5
    move v1, v2

    .line 107
    goto :goto_3

    :cond_6
    move v3, v4

    .line 108
    goto :goto_4

    .line 110
    .end local v0    # "lastOn":Z
    :cond_7
    iget-object v5, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->operateLeftBt:Landroid/widget/ImageView;
    invoke-static {v5}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$300(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v5

    if-ne p1, v5, :cond_8

    .line 111
    iget-object v2, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->operateLeftBt:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$300(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 112
    iget-object v2, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->operateRightBt:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$400(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    iget-object v2, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->operateShowImage:Landroid/widget/ImageView;
    invoke-static {v2}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$500(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v2

    const v3, 0x7f0200ba

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 114
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v2

    const-string v3, "is_operate_left"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 117
    :cond_8
    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->operateRightBt:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$400(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v1

    if-ne p1, v1, :cond_9

    .line 118
    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->operateLeftBt:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$300(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 119
    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->operateRightBt:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$400(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 120
    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->operateShowImage:Landroid/widget/ImageView;
    invoke-static {v1}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$500(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/ImageView;

    move-result-object v1

    const v3, 0x7f0200bc

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 121
    invoke-static {}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->getInstance()Lcom/wepie/snake/helper/pref/GamePrefUtil;

    move-result-object v1

    const-string v3, "is_operate_left"

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lcom/wepie/snake/helper/pref/GamePrefUtil;->setBoolean(Ljava/lang/String;Ljava/lang/Boolean;)V

    goto/16 :goto_0

    .line 123
    :cond_9
    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # getter for: Lcom/wepie/snake/module/home/setting/SettingsView;->logoutBt:Landroid/widget/TextView;
    invoke-static {v1}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$600(Lcom/wepie/snake/module/home/setting/SettingsView;)Landroid/widget/TextView;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 124
    invoke-static {}, Lcom/wepie/snake/module/login/LoginHelper;->isVisitor()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 125
    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    invoke-virtual {v1}, Lcom/wepie/snake/module/home/setting/SettingsView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/wepie/snake/activity/HomeActivity;

    invoke-virtual {v1}, Lcom/wepie/snake/activity/HomeActivity;->showUserInfoView()V

    .line 126
    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    iget-object v1, v1, Lcom/wepie/snake/module/home/setting/SettingsView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    iget-object v1, v1, Lcom/wepie/snake/module/home/setting/SettingsView;->mCloseListener:Lcom/wepie/snake/helper/dialog/CloseListener;

    invoke-interface {v1}, Lcom/wepie/snake/helper/dialog/CloseListener;->onClose()V

    goto/16 :goto_0

    .line 128
    :cond_a
    iget-object v1, p0, Lcom/wepie/snake/module/home/setting/SettingsView$1;->this$0:Lcom/wepie/snake/module/home/setting/SettingsView;

    # invokes: Lcom/wepie/snake/module/home/setting/SettingsView;->doLogout()V
    invoke-static {v1}, Lcom/wepie/snake/module/home/setting/SettingsView;->access$700(Lcom/wepie/snake/module/home/setting/SettingsView;)V

    goto/16 :goto_0
.end method
